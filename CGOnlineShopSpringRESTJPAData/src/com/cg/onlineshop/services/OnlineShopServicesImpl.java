package com.cg.onlineshop.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.onlineshop.beans.Product;
import com.cg.onlineshop.daoservices.ProductDAO;
import com.cg.onlineshop.exceptions.ProductDetailsNotFoundException;

@Component(value="onlineShopServices")
public class OnlineShopServicesImpl implements OnlineShopServices{

	@Autowired
	ProductDAO productDAO;
	
	@Override
	public Product acceptProductDetails(Product product) {
		return productDAO.save(product);
	}

	@Override
	public ArrayList<Product> getAllProductDetails() {
		return (ArrayList<Product>) productDAO.findAll();
	}

	@Override
	public Product getProductDetails(int productId) throws ProductDetailsNotFoundException {
		return productDAO.findById(productId).orElseThrow(()->new ProductDetailsNotFoundException("Product details for productID"+ productId+"not found"));}

	@Override
	public void removeProductDetails(int productId) {
		productDAO.deleteById(productId);
		
	}

}
