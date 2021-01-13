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

import com.store.model.Order;
import com.store.services.OrderService;

@RestController
@RequestMapping("/orders")
public class OrderController 
{
	
	

	private OrderService orderService;
	
	 @Autowired
	    public OrderController(OrderService orderService)
	 {
	        this.orderService = orderService;
	  }
	 
	  @GetMapping
	    public ResponseEntity<List<Order>> getAllOrders() 
	    {
	        return new ResponseEntity(orderService.getOrders(), HttpStatus.OK);
	    }
	  
	  
	  
	  @GetMapping("/{id}")
			public ResponseEntity getOrderById(@PathVariable int orderId) throws RecordNotFoundException 
	  		{
				if(orderId == 0 ) 
				{
					return new ResponseEntity<>("Id must not be 0", HttpStatus.BAD_REQUEST);
				}
				
				return new ResponseEntity<Order>(orderService.getOrderByID(orderId), HttpStatus.OK);
			}
	  
	  
	  
	  
	  
	  
	  /**
	   * Insert new Cart
	   * @param cart
	   * @return
	   */
	    @PostMapping
	    public ResponseEntity<Order> saveNewOrder(@RequestBody Order order)
	    {
	        if(order.getOrder_id()!=0)
	        {
	            return new ResponseEntity("Id must be 0", HttpStatus.BAD_REQUEST);
	        }
	        
	        return new ResponseEntity(orderService.saveNewOrder(order), HttpStatus.OK);
	    } // postMapping
	    
	    
	    
	    /**
	     * Update Cart
	     * @param cart
	     * @return
	     * @throws RecordNotFoundException
	     */
	    @PatchMapping
	    public ResponseEntity<Order> updateOrder(@RequestBody Order order) throws RecordNotFoundException 
	    {
	       // if (order.getUser_id() == 0) 
	        if (order.getUser()!=null)
	        {
	            return new ResponseEntity("User id must not be 0", HttpStatus.BAD_REQUEST);
	        }
	        return new ResponseEntity(orderService.updateOrder(order), HttpStatus.CREATED);
	    }

	    
	    /**
	     * Delete Id
	     * @param cartId
	     * @return
	     * @throws RecordNotFoundException
	     */
	    @DeleteMapping("{id}")
	    public  ResponseEntity<Object> deleteOrder(@PathVariable int orderId) throws RecordNotFoundException
	    {    	
	    	  orderService.deleteOrder(orderId);
	    	  return new ResponseEntity( HttpStatus.OK); 
	    }  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	   
	  
	  
	  
	  
	  
}
