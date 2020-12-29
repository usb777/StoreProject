package com.store.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.AddressJPARepository;
import com.store.dao_repositories.ProductJPARepository;
import com.store.exception.RecordNotFoundException;

import com.store.model.Address;
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
	public Product getProductByID(int id) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product saveNewProduct(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product updateProduct(Product product) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteProduct(int id) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteAllProducts() {
		// TODO Auto-generated method stub
		
	}

	
	
	
}
