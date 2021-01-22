package com.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.store.exception.RecordNotFoundException;

import com.store.model.OrderItem;
import com.store.services.OrderItemService;

@RestController
@RequestMapping("/order-items")
public class OrderItemController 
{
	
	

	private OrderItemService orderItemService;
	
	 @Autowired
	    public OrderItemController(OrderItemService orderItemService)
	 {
	        this.orderItemService = orderItemService;
	  }
	 
	  @GetMapping
	    public ResponseEntity<List<OrderItem>> getAllOrderItems() 
	    {
	        return new ResponseEntity(orderItemService.getOrderItems(), HttpStatus.OK);
	    }
	  
	  
	  
	  @GetMapping("/{id}")
			public ResponseEntity getOrderItemById(@PathVariable int orderId) throws RecordNotFoundException 
	  		{
				if(orderId == 0 ) 
				{
					return new ResponseEntity<>("Id must not be 0", HttpStatus.BAD_REQUEST);
				}
				
				return new ResponseEntity<OrderItem>(orderItemService.getOrderItemByID(orderId), HttpStatus.OK);
			}
	  
	  
	  
	  
	  
	  
	  /**
	   * Insert new Cart
	   * @param cart
	   * @return
	   */
	    @PostMapping
	    public ResponseEntity<OrderItem> saveNewOrderItem(@RequestBody OrderItem orderItem)
	    {
	        if(orderItem.getOrder_id()!=0)
	        {
	            return new ResponseEntity("Id must be 0", HttpStatus.BAD_REQUEST);
	        }
	        
	        return new ResponseEntity(orderItemService.saveNewOrderItem(orderItem), HttpStatus.OK);
	    } // postMapping
	    
	    
	    
	    /**
	     * Update Cart
	     * @param cart
	     * @return
	     * @throws RecordNotFoundException
	     */
	    @PatchMapping
	    public ResponseEntity<OrderItem> updateOrderItem(@RequestBody OrderItem orderItem) throws RecordNotFoundException 
	    {
	       // if (order.getUser_id() == 0) 
	        if (orderItem!=null)
	        {
	            return new ResponseEntity("User id must not be 0", HttpStatus.BAD_REQUEST);
	        }
	        return new ResponseEntity(orderItemService.updateOrderItem(orderItem), HttpStatus.CREATED);
	    }

	    
	    /**
	     * Delete Id
	     * @param cartId
	     * @return
	     * @throws RecordNotFoundException
	     */
	    @DeleteMapping("{id}")
	    public  ResponseEntity<Object> deleteOrderItem(@PathVariable int orderItemId) throws RecordNotFoundException
	    {    	
	    	  orderItemService.deleteOrderItem(orderItemId);
	    	  return new ResponseEntity( HttpStatus.OK); 
	    }  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	   
	  
	  
	  
	  
	  
}
