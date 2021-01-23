package com.store.services;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.CartItemJPARepository;
import com.store.dao_repositories.OrderItemJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.CartItem;
import com.store.model.OrderItem;


@Service
@Transactional
public class OrderItemService implements IOrderItemService 
{

	
	 private OrderItemJPARepository orderItemRepository;
	    
	   // @Autowired 
	  //  CartJPARepository repository;
	
	
	    @Autowired // autowired by Constructor
	    public OrderItemService( OrderItemJPARepository orderItemRepository) 
	    {
	        this.orderItemRepository = orderItemRepository;
	    }
	    

	    
		   
	    public List<OrderItem> findOrderItemsByUserId(int user_id)
	    {
	    	return orderItemRepository.findOrderItemsByUserId(user_id);
	    }
	    
	    
	    public Object totalOrderPrice( int user_id)
	    {
	    	return orderItemRepository.totalOrderPriceByUser(user_id);
	    }
	    

	@Override
	public List<OrderItem> getOrderItems()
	{
		// TODO Auto-generated method stub
		return orderItemRepository.findAll();
	}

	@Override
	public OrderItem getOrderItemByID(int orderItemId) throws RecordNotFoundException
	{
		return orderItemRepository.getOne(orderItemId);
	}
	

	@Override
	public OrderItem saveNewOrderItem(OrderItem orderItem) 
	{		
		return orderItemRepository.save(orderItem);
	}

	@Override
	public OrderItem updateOrderItem(OrderItem orderItem) throws RecordNotFoundException 
	{
		 OrderItem oldOrderItem = orderItemRepository.getOne(orderItem.getId());
	       
	        if (orderItem != null) 
	        {
	        	
	   /*        	 	
			int id;    			//1	
			int order_id;    	//2  JOIN Column
			int product_id;     //3  JOIN Column
			int quantity;       //4
			Date date_added;    //5
		
	    */    	
	        	oldOrderItem.setOrder_id(oldOrderItem.getOrder_id());       //2
	        	oldOrderItem.setProduct(oldOrderItem.getProduct()); 		//3
	        	oldOrderItem.setQuantity(oldOrderItem.getQuantity());     	//4
	        	oldOrderItem.setDate_added(new Date());						//5
	          
	          
	         
	        }
	      //  return oldC; 
	        
	        return orderItemRepository.save(oldOrderItem);
	}

	@Override
	public void deleteOrderItem(int orderItemId) throws RecordNotFoundException 
	{
		orderItemRepository.deleteById(orderItemId);			
	}

	@Override
	public void deleteOrderItems() 
	{
		orderItemRepository.findAll();		
	}
	    
	

}
