package com.store.services;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.CartJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;


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
			 
			 /*
			  * int product_id;  //3
				Date date_added;   //4	
				String email;           //5
				int quantity;           //6
			  */
			 oldCart.setUser_id(cart.getUser_id());   //2
			 oldCart.setProduct_id(cart.getProduct_id());  //3
			 oldCart.setDate_added(new Date()); //4			
			 oldCart.setQuantity(cart.getQuantity());  //5
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
