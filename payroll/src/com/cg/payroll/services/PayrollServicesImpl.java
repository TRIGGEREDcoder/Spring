package com.cg.payroll.services;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.payroll.beans.Associate;
import com.cg.payroll.daoservices.AssociateDAO;
import com.cg.payroll.exceptions.AssociateDetailsNotFoundException;
import com.cg.payroll.exceptions.PayrollServicesDownException;

@Component(value = "payrollServices")
public class PayrollServicesImpl implements PayrollServices{

	@Autowired
	private AssociateDAO associateDAO;

	@Override
	public Associate acceptAssociateDetails(Associate associate) throws PayrollServicesDownException, SQLException {
		try {
			associate = associateDAO.save(associate);
			return associate;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return associate;
	}

	@Override
	public int calculateNetSalary(int associateId)
			throws AssociateDetailsNotFoundException, PayrollServicesDownException, SQLException {
		Associate associate = associateDAO.findById(associateId).get();
		if (associate == null)
			throw new AssociateDetailsNotFoundException("Associate Details Not Found");
		// tax calculation code
		int basicSalary = associate.getSalary().getBasicSalary();

		int hra = 30 * basicSalary / 100;
		associate.getSalary().setHra(hra);

		int conveyenceAllowance = 25 * basicSalary / 100;
		associate.getSalary().setConveyanceAllowance(conveyenceAllowance);

		int otherAllowance = 25 * basicSalary / 100;
		associate.getSalary().setOtherAllowance(otherAllowance);

		int personalAllowance = 30 * basicSalary / 100;
		associate.getSalary().setPersonalAllowance(personalAllowance);

		int epf = 12 * basicSalary / 100;
		associate.getSalary().setEpf(epf);

		int companyPf = 12 * basicSalary / 100;
		associate.getSalary().setCompanyPf(companyPf);

		int gratuity = 5 * basicSalary / 100;
		associate.getSalary().setGratuity(gratuity);

		int grossSalary = basicSalary + conveyenceAllowance + otherAllowance + personalAllowance + epf;
		associate.getSalary().setGrossSalary(grossSalary);
		int yearlyInvestmentUnder80C = epf + associate.getYearlyInvestmentUnder80C();
		if (yearlyInvestmentUnder80C > 150000)
			yearlyInvestmentUnder80C = 150000;
		associate.setYearlyInvestmentUnder80C(yearlyInvestmentUnder80C);

		int taxableIncome = 12 * (grossSalary - epf) - yearlyInvestmentUnder80C;
		int yearlyTax = 0;
		if (taxableIncome <= 250000)
			yearlyTax = 0;
		else if (taxableIncome > 250000 && taxableIncome <= 500000)
			yearlyTax = 5 * (taxableIncome - 250000) / 100;
		else if (taxableIncome > 500000 && taxableIncome <= 1000000)
			yearlyTax = 12500 + 20 * (taxableIncome - 500000);
		else
			yearlyTax = 112500 + 30 * (taxableIncome - 1000000);
		int monthlyTax = yearlyTax / 12;
		associate.getSalary().setMonthlyTax(monthlyTax);

		int netSalary = grossSalary - epf - monthlyTax;
		associate.getSalary().setNetSalary(netSalary);
		associateDAO.save(associate);
		return netSalary;
	}

	@Override
	public Associate getAssociateDetails(int associateId)
			throws AssociateDetailsNotFoundException, PayrollServicesDownException, SQLException {
		try {
			Associate associate;
			associate = associateDAO.findById(associateId).get();
			if (associate == null)
				throw new AssociateDetailsNotFoundException("Associate Details Not Found");
			return associate;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public ArrayList<Associate> getAllAssociateDetails() throws PayrollServicesDownException {
		return (ArrayList<Associate>) associateDAO.findAll();
	}

}
