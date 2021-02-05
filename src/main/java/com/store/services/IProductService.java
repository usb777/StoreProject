package com.store.services;

import java.util.List;

import com.store.exception.RecordNotFoundException;
import com.store.model.Address;
import com.store.model.Product;


public interface IProductService 
{
	  public List<Product> getProducts();
	  public Product getProductByID(int id)throws RecordNotFoundException;
	  public Product saveNewProduct(Product product);
	  public Product updateProduct(Product product)throws RecordNotFoundException;
	  public void deleteProduct(int id) throws RecordNotFoundException ;
	  public void deleteAllProducts();
}
