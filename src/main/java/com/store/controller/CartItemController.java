package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.store.exception.RecordNotFoundException;

import com.store.model.CartItem;
import com.store.model.User;
import com.store.services.CartItemService;


@RestController
@RequestMapping("/cartitem")
public class CartItemController 
{

	private CartItemService cartItemService;
	
	 @Autowired
	    public CartItemController(CartItemService cartItemService)
	 {
	        this.cartItemService = cartItemService;
	  }
	 
	 
	  @GetMapping
	    public ResponseEntity<List<CartItem>> getAllCartItems() 
	    {
	        return new ResponseEntity(cartItemService.getCartItems(), HttpStatus.OK);
	    }
	  
	  
	  @GetMapping("/{userId}")
		public ResponseEntity<List<CartItem>> getCartItemByUserId(@PathVariable int userId) throws RecordNotFoundException 
		{
			if(userId == 0 ) 
			{
				return new ResponseEntity("Id must not be 0", HttpStatus.BAD_REQUEST);
			}
			
			//return new ResponseEntity(cartItemService.findCartItemByUserId(userId), HttpStatus.OK);
			return new ResponseEntity(cartItemService.findCartItemByUserId(userId), HttpStatus.OK);
		}
	  
	  
	  
	
}
