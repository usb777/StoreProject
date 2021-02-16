package com.store.dao_repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.store.model.Cart;
import com.store.model.Order;


@Repository
public interface OrderJPARepository extends JpaRepository<Order, Integer>
{

	
	 @Modifying
	  @Query(value = "SELECT  orders.order_id, orders.user_id FROM Orders orders WHERE orders.user_id = ?", 	  nativeQuery = true)
		 public List<Order> findOrdersByUserId( int user_id);
	  
	  @Query(value = "SELECT  orders.order_id, orders.user_id FROM Orders orders WHERE orders.user_id = ?", 	  nativeQuery = true)
		 public Order findOrderByUserId( int user_id);
	  
}
