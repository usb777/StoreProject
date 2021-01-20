package com.store.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.persistence.Column;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.CartItemJPARepository;
import com.store.dao_repositories.CartJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;
import com.store.model.CartItem;
import com.store.model.User;


@Service
@Transactional
public class CartItemService implements ICartItemService 
{
	 private CartItemJPARepository cartItemRepository;
	    
	   // @Autowired 
	  //  CartJPARepository repository;
	
	
	    @Autowired // autowired by Constructor
	    public CartItemService( CartItemJPARepository cartItemRepository) 
	    {
	        this.cartItemRepository = cartItemRepository;
	    }
	
	
	
	@Override
	public List<CartItem> getCarts() 
	{
		return cartItemRepository.findCartsByUserId(user_id);
	}

	@Override
	public CartItem getCartByID(int cartItemId) throws RecordNotFoundException 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CartItem saveNewCartItem(CartItem cartItem)
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CartItem updateCartItem(CartItem cartItem) throws RecordNotFoundException 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCartItem(int id) throws RecordNotFoundException
	{
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteCartItems() 
	{
		// TODO Auto-generated method stub
		
	}

}
