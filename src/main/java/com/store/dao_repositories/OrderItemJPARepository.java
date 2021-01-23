package com.store.dao_repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.store.model.CartItem;
import com.store.model.OrderItem;


@Repository
public interface OrderItemJPARepository extends JpaRepository<OrderItem, Integer>
{
	
	  @Modifying
	  @Query(value = "SELECT oi.id, oi.order_id, oi.product_id, oi.quantity, oi.date_added, o.user_id FROM order_item oi JOIN orders o ON o.order_id = oi.order_id WHERE o.user_id = ?",  
	  nativeQuery = true)
		public List<OrderItem> findOrderItemsByUserId( int user_id);
	  
	  
 @Query(value = "SELECT SUM(oi.quantity* p.price) FROM order_item oi 	  JOIN orders o ON o.order_id = oi.order_id  JOIN product p ON oi.product_id = p.product_id  WHERE o.user_id= ?",  
		 nativeQuery = true)
 public Object totalOrderPriceByUser( int user_id);	

}
