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
	  @Query(value = "SELECT ci.id, ci.cart_id, ci.product_id, ci.quantity, ci.date_added, c.user_id FROM cart_item ci " + 
	  		"JOIN cart c ON c.cart_id = ci.cart_id WHERE c.user_id= ?", 	  nativeQuery = true)
		 public List<CartItem> findCartItemByUserId( int user_id);
	  
	  
	  
	  @Query(value = "SELECT COUNT(ci.id) FROM cart_item ci JOIN cart c ON c.cart_id = ci.cart_id WHERE c.user_id= ?",  nativeQuery = true)
		 public Object countCartItems( int user_id);
	  
	  @Query(value = "SELECT SUM(ci.quantity* p.price) FROM cart_item ci " + 
	  		"JOIN cart c ON c.cart_id = ci.cart_id " + 
	  		"JOIN product p ON ci.product_id = p.product_id " + 
	  		"WHERE c.user_id= ?",  nativeQuery = true)
	  public Object totalCartPriceByUser( int user_id);	  
	  
	  
}
