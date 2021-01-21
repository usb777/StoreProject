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
	    
	   
	    public List<CartItem> findCartItemByUserId(int user_id)
	    {
	    	return cartItemRepository.findCartItemByUserId(user_id);
	    }
	    
	    
	    
	    public Object countCartItems( int user_id)
	    {    
	    	return cartItemRepository.countCartItems(user_id);
	    }
	    
	    
	    public Object totalCartPrice( int user_id)
	    {
	    	return cartItemRepository.totalCartPriceByUser(user_id);
	    }
	    
	    
	
	
	
	@Override
	public List<CartItem> getCartItems() 
	{
		return cartItemRepository.findAll();
	}

	@Override
	public CartItem getCartItemByID(int cartItemId) throws RecordNotFoundException 
	{
		// TODO Auto-generated method stub
		return cartItemRepository.getOne(cartItemId);
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
