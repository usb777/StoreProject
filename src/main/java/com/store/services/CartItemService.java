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
	    
	    public Object getUserIDbyCartItemID( int id)
	    {
	    	return cartItemRepository.getUserIDbyCartItemID(id);
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
		return cartItemRepository.save(cartItem);
	}

	@Override
	public CartItem updateCartItem(CartItem cartItem) throws RecordNotFoundException 
	{
	   CartItem oldCartItem = cartItemRepository.getOne(cartItem.getId());
	       
        if (cartItem != null) 
        {
        	
   /*        	 	
		int id;    			//1	
		int cart_id;    	//2  JOIN Column
		int product_id;     //3  JOIN Column
		int quantity;       //4
		Date date_added;    //5
	
    */    	
        	oldCartItem.setCart_id(oldCartItem.getCart_id());       //2
        	oldCartItem.setProduct(oldCartItem.getProduct()); //3
        	oldCartItem.setQuantity(oldCartItem.getQuantity());     //4
        	oldCartItem.setDate_added(new Date());//5
          
          
         
        }
      //  return oldC; 
        
        return cartItemRepository.save(oldCartItem);
	}

	@Override
	public void deleteCartItem(int id) throws RecordNotFoundException
	{ 
		cartItemRepository.deleteById(id);		
	}

	@Override
	public void deleteCartItems() 
	{
		cartItemRepository.deleteAll();
		
	}

}
