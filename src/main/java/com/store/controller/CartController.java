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
import com.store.model.Cart;
import com.store.services.CartService;

@RestController
@RequestMapping("/carts")
public class CartController 
{

	private CartService cartService;
	
	 @Autowired
	    public CartController(CartService cartService)
	 {
	        this.cartService = cartService;
	  }
	 
	  @GetMapping
	    public ResponseEntity<List<Cart>> getAllCarts() 
	    {
	        return new ResponseEntity(cartService.getCarts(), HttpStatus.OK);
	    }
	  
	  
	  @GetMapping("/{id}")
			public ResponseEntity getCartById(@PathVariable int cartId) throws RecordNotFoundException 
	  		{
				if(cartId == 0 ) 
				{
					return new ResponseEntity<>("Id must not be 0", HttpStatus.BAD_REQUEST);
				}
				
				return new ResponseEntity<Cart>(cartService.getCartByID(cartId), HttpStatus.OK);
			}
	  
	  
	  /**
	   * Insert new Cart
	   * @param cart
	   * @return
	   */
	    @PostMapping
	    public ResponseEntity<Cart> saveNewCart(@RequestBody Cart cart)
	    {
	        if(cart.getCart_id()!=0)
	        {
	            return new ResponseEntity("Id must be 0", HttpStatus.BAD_REQUEST);
	        }
	        
	        return new ResponseEntity(cartService.saveNewCart(cart), HttpStatus.OK);
	    } // postMapping
	    
	    
	    
	    /**
	     * Update Cart
	     * @param cart
	     * @return
	     * @throws RecordNotFoundException
	     */
	    @PatchMapping
	    public ResponseEntity<Cart> updateCart(@RequestBody Cart cart) throws RecordNotFoundException 
	    {
	        if (cart.getCart_id() == 0) {
	            return new ResponseEntity("User id must not be 0", HttpStatus.BAD_REQUEST);
	        }
	        return new ResponseEntity(cartService.updateCart(cart), HttpStatus.CREATED);
	    }

	    
	    /**
	     * Delete Id
	     * @param cartId
	     * @return
	     * @throws RecordNotFoundException
	     */
	    @DeleteMapping("{id}")
	    public  ResponseEntity<Object> deleteCart(@PathVariable int cartId) throws RecordNotFoundException
	    {    	
	    	  cartService.deleteCart(cartId);
	    	  return new ResponseEntity( HttpStatus.OK); 
	    }  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	
}
