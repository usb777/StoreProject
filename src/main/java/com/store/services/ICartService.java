package com.store.services;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;
import com.store.model.User;

public interface ICartService 
{
	  public List<Cart> getCarts();
	  public Cart getCartByID(int cartId)throws RecordNotFoundException;
	  public Cart saveNewCart(Cart cart);
	  public Cart updateCart(Cart cart)throws RecordNotFoundException;
	  public void deleteCart(int id) throws RecordNotFoundException ;
	  public void deleteCarts();
	  
	 
	
	  
}
