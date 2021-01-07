package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.store.model.Product;
import com.store.services.ProductService;


@RequestMapping("/")
public class MainController 
{

	
	 @Autowired
	    private ProductService productService;

	 @RequestMapping
	    public String index(Model model) 
	    {
	    	  model.addAttribute("products", productService.getProducts());
	    	  model.addAttribute("test", "hello world") ;
	    	  return "index";
	    }
	// ViewResolver
	
}
