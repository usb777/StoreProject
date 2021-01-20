package com.store.dao_repositories;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.store.model.Cart;
import com.store.model.CartItem;


@Repository
public interface CartItemJPARepository  extends JpaRepository<CartItem, Integer>
{

	  @Modifying
	  @Query(value = "SELECT  cart.cart_id, cart.user_id FROM Cart cart WHERE cart.user_id = ?", 	  nativeQuery = true)
		 public List<Cart> findCartsByUserId( int user_id);
	  
	  
	  
	/*
	  @Query(value = "SELECT  count(cart.cart_id) as items  FROM Cart cart WHERE cart.user_id = ?",  nativeQuery = true)
		 public Object countCartItems( int user_id);
	  
	  @Query(value = " SELECT  SUM(cart.quantity*p.price) FROM Cart cart	  JOIN product p  ON cart.product_id= p.product_id	   WHERE cart.user_id = ?",  nativeQuery = true)
	  public Object totalCartPrice( int user_id);
	  */
}
