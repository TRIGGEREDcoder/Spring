package com.cg.onlineshop.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.cg.onlineshop.beans.Product;
import com.cg.onlineshop.exceptions.ProductDetailsNotFoundException;
import com.cg.onlineshop.services.OnlineShopServices;
import com.cg.onlineshop.services.OnlineShopServicesImpl;

@RestController
public class ProductCatalogController {
	@Autowired
	OnlineShopServices onlineShopServices;
	@RequestMapping("/hello")
	public ResponseEntity<String>sayHello(){
		ResponseEntity<String> response=new ResponseEntity<String>("Hello TO All", HttpStatus.OK);
		return response;
	}

	@RequestMapping(value="/acceptProductDetails", method=RequestMethod.POST, consumes=MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ResponseEntity<String> acceptProductDetails(@ModelAttribute Product product){
		onlineShopServices.acceptProductDetails(product);
		return new ResponseEntity<>("Product details successfully added",HttpStatus.OK);
	}

	@RequestMapping(value="/productDetails", produces=MediaType.APPLICATION_JSON_VALUE,headers="Accept=application/json")
	public ResponseEntity<Product>getProductDetails(@RequestParam("productId") int productId) throws ProductDetailsNotFoundException{
		Product product=onlineShopServices.getProductDetails(productId);
		return new ResponseEntity<>(product, HttpStatus.OK);
	}

	@RequestMapping(method=RequestMethod.GET,value= {"/allProductDetails"},produces=MediaType.APPLICATION_JSON_VALUE,headers="Accept=application/json")
	public ResponseEntity<List<Product>> getAllProductDetails(){
		List<Product> productsList=onlineShopServices.getAllProductDetails();
		return new ResponseEntity<>(productsList,HttpStatus.OK);
	}
	@RequestMapping(value="/deleteProductDetails",method=RequestMethod.DELETE)
	public ResponseEntity<String> deleteProductdetails(@RequestParam("productId") int productId) throws ProductDetailsNotFoundException{
		onlineShopServices.removeProductDetails(productId);
		return new ResponseEntity<>("Product details with productCode"+productId+"successfully deleted",HttpStatus.OK);
	}
}
