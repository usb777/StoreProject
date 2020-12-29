package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


import com.store.model.Product;
import com.store.services.ProductService;

@RestController
public class ProductController 
{

	
	 @Autowired
	    private ProductService productService;

	    @GetMapping("/products")
	    public ResponseEntity < List < Product >> getAllProducts() 
	    {
	        return ResponseEntity.ok().body(productService.getProducts());
	    }
	
	
}
