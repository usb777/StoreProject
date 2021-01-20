package com.store.services;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.store.exception.RecordNotFoundException;

import com.store.model.CartItem;


public interface ICartItemService 
{
	  public List<CartItem> getCartItems();
	  
	  
	  public CartItem getCartItemByID(int cartItemId)throws RecordNotFoundException;
	  public CartItem saveNewCartItem(CartItem cartItem);
	  public CartItem updateCartItem(CartItem cartItem)throws RecordNotFoundException;
	  public void deleteCartItem(int id) throws RecordNotFoundException ;
	  public void deleteCartItems();
	  
	 
	
	  
}
