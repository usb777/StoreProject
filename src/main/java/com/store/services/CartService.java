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

import com.store.dao_repositories.CartJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;
import com.store.model.User;


@Service
@Transactional
public class CartService implements ICartService 
{
	
	 private CartJPARepository cartRepository;
	    
	   // @Autowired 
	  //  CartJPARepository repository;
	
	
	    @Autowired // autowired by Constructor
	    public CartService( CartJPARepository cartRepository) 
	    {
	        this.cartRepository = cartRepository;
	    }
	    
	   
	    
	    public List<Cart> findCartsByUserId(int user_id)
	    {
	    	return cartRepository.findCartsByUserId(user_id);
	    }
	    
	  /*  
	    public Object countCartItems( int user_id)
	    {    
	    	return cartRepository.countCartItems(user_id);
	    }
	    
	    public Object totalCartPrice( int user_id)
	    {
	    	return cartRepository.totalCartPrice(user_id);
	    }
	    
	    
	    
	    */
	    	    
	    
	 

	@Override
	public List<Cart> getCarts()
	{
		// TODO Auto-generated method stub
		return cartRepository.findAll();
	}

	@Override
	public Cart getCartByID(int cartId) throws RecordNotFoundException
	{
		return cartRepository.getOne(cartId);
	}

	@Override
	public Cart saveNewCart(Cart cart) 
	{
		return cartRepository.save(cart);
	}

	@Override
	  @Transactional
	public Cart updateCart(Cart cart) throws RecordNotFoundException 
	{		
		
		Cart oldCart = cartRepository.getOne(cart.getCart_id());
		
		 if (cart.getCart_id() >0) 
	        {		
			 oldCart.setUser_id(cart.getUser_id());   //2			
 	        }
	        return cartRepository.save(oldCart);
		
		
		
	}

	@Override
	public void deleteCart(int cartId) throws RecordNotFoundException 
	{
		
		  Cart oldCart = cartRepository.getOne(cartId); // getOne
	        cartRepository.deleteById(cartId);
	}

	@Override
	public void deleteCarts() 
	{
		  cartRepository.deleteAll();
	}

}
