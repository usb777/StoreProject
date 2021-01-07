package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.store.model.Product;
import com.store.model.User;
import com.store.services.ProductService;
import com.store.services.UserService;

@Controller
@RequestMapping("/admin")
public class AdminWebController
{
	private UserService userService;
	
	 @Autowired
	    private ProductService productService;
	
	 @Autowired
	    public AdminWebController(UserService userService)
	 {
	        this.userService = userService;
	  }
	 
	
	 @RequestMapping("/users")
	    public String showUserList(Model model)  
	    {
		 	model.addAttribute("users", userService.getUsers());
		    return "admin/users";
	    }
	 
	 /*
	 
	   @GetMapping("/admin/products")
	    public ResponseEntity < List < Product >> getProducts() 
	    {
	        return ResponseEntity.ok().body(productService.getProducts());
	    }
	   */
	   
	   //View Layer
	   @RequestMapping("/products")
	   public String showProductList(Model model) {
		   
		   model.addAttribute("products", productService.getProducts());
		    return "admin/products";
		   
	   }
	   
	 
	 
	 
	 
	 
	 
	 

}
