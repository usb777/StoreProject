package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.store.model.Product;
import com.store.model.User;
import com.store.services.ProductService;
import com.store.services.UserService;

@RestController
@RequestMapping("/admin")
public class AdminController
{
	private UserService us;
	
	 @Autowired
	    private ProductService productService;
	
	 @Autowired
	    public AdminController(UserService us)
	 {
	        this.us = us;
	  }
	 
	
	 @GetMapping("/users")
	    public ResponseEntity<List<User>> getAllUsers() 
	    {
	        return new ResponseEntity(us.getUsers(), HttpStatus.OK);
	    }
	 
	 
	   @GetMapping("/products")
	    public ResponseEntity < List < Product >> getAllProducts() 
	    {
	        return ResponseEntity.ok().body(productService.getProducts());
	    }
	 
	 
	 
	 
	 
	 
	 

}
