package com.store.services;

import java.util.List;

import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;

public interface ICartService 
{
	  public List<Cart> getCarts();
	  public Cart getCartByID(int cartId)throws RecordNotFoundException;
	  public Cart saveNewCart(Cart cart);
	  public Cart updateCart(Cart cart)throws RecordNotFoundException;
	  public void deleteCart(int id) throws RecordNotFoundException ;
	  public void deleteCarts();
}
