package com.store.services;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.CartJPARepository;
import com.store.dao_repositories.OrderJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Cart;
import com.store.model.Order;


@Service
@Transactional
public class OrderService implements IOrderService 
{	
	 private OrderJPARepository orderRepository;
	 
	    @Autowired // autowired by Constructor
	    public OrderService( OrderJPARepository orderRepository) 
	    {       this.orderRepository = orderRepository;	    }
	    
	
	    
	    
	    
	    public List<Order> findOrdersByUserId(int user_id)
	    {
	    	return orderRepository.findOrdersByUserId(user_id);
	    }
	    
	    public Order findOrderByUserId(int user_id)
	    {
	    	return orderRepository.findOrderByUserId(user_id);
	    }
	       
	    
	    

	   // Get Orders 
	@Override
	public List<Order> getOrders() 
	{	return orderRepository.findAll();	}

	
	
	@Override
	public Order getOrderByID(int orderId) throws RecordNotFoundException 
	{	return orderRepository.getOne(orderId);	}
	

	@Override
	public Order saveNewOrder(Order order) 
	{
		return orderRepository.save(order);
	}

	@Override
	  @Transactional
	public Order updateOrder(Order order) throws RecordNotFoundException
	{
		Order oldOrder = orderRepository.getOne(order.getOrder_id());
		
		 if (order.getOrder_id() >0) 
	        {			 
	 /*
			int order_id;      //1	
			int user_id;      //2			
	 */
			 oldOrder.setUser_id(order.getUser_id());   		//2
		
	        }
	        return orderRepository.save(oldOrder);
	}

	@Override
	public void deleteOrder(int orderId) throws RecordNotFoundException 
	{       orderRepository.deleteById(orderId);		}

	/**
	 * Delete all Orders  - crazy admin function
	 */
	@Override
	public void deleteOrders() 
	{
		// TODO Auto-generated method stub
		orderRepository.deleteAll();
	}

}
