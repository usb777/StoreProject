package com.store.services;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Lob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.AddressJPARepository;
import com.store.dao_repositories.ProductJPARepository;
import com.store.exception.RecordNotFoundException;

import com.store.model.Address;
import com.store.model.Cart;
import com.store.model.Product;

@Service
@Transactional
public class ProductService implements IProductService 
{
	@Autowired
    private ProductJPARepository productRepository;

	@Override
	public List<Product> getProducts() {
		 return this.productRepository.findAll();
	}

	@Override
	public Product getProductByID(int productId) throws RecordNotFoundException 
	{
		// TODO Auto-generated method stub
		return productRepository.getOne(productId);
	}

	@Override
	public Product saveNewProduct(Product product) {
		// TODO Auto-generated method stub
		return productRepository.save(product);
	}

	@Override
	public Product updateProduct(Product product) throws RecordNotFoundException 
	{
		Product oldProduct = productRepository.getOne(product.getProduct_id());
		
		 if (product.getProduct_id() >0) 
	        {
			 
	 /*
	  * 
	private int product_id;	//1
	private String  productname; //2	
	private String description; //3
	private double price;   //4
	private int quantity;//5
	
			  */
			// oldCart.setUser_id(cart.getUser_id());   //2
			 oldProduct.setProduct_id(product.getProduct_id()); 	//1
			 oldProduct.setProductName(product.getProductName());	 //2
			 oldProduct.setDescription(product.getDescription());  	//3
			 oldProduct.setPrice(product.getPrice());				//4
			 oldProduct.setQuantity(product.getQuantity());  		//5
			 
			 
			
	        }
	        return productRepository.save(oldProduct);
	}

	@Override
	public void deleteProduct(int productId) throws RecordNotFoundException 
	{
		  Product oldProduct = productRepository.getOne( productId); // getOne
	       productRepository.deleteById( productId);
		
	}

	@Override
	public void deleteAllProducts() 
	{
		productRepository.deleteAll();
		
	}

	
	
	
}
