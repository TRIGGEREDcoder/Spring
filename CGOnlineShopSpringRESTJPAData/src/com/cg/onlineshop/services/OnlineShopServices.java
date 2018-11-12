package com.cg.onlineshop.services;

import com.cg.onlineshop.beans.Product;
import com.cg.onlineshop.exceptions.ProductDetailsNotFoundException;
import java.util.List;

public interface OnlineShopServices {
public Product acceptProductDetails(Product product);
public List<Product> getAllProductDetails();
public Product getProductDetails(int productId) throws ProductDetailsNotFoundException;
public void removeProductDetails(int productId);
}
