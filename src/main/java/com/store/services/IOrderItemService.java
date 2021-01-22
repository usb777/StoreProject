package com.store.services;

import java.util.List;

import com.store.exception.RecordNotFoundException;
import com.store.model.OrderItem;

public interface IOrderItemService
{
	  public List<OrderItem> getOrderItems();
	  public OrderItem getOrderItemByID(int orderItemId)throws RecordNotFoundException;
	  public OrderItem saveNewOrderItem(OrderItem orderItem);
	  public OrderItem updateOrderItem(OrderItem orderItem)throws RecordNotFoundException;
	  public void deleteOrderItem (int orderItemId) throws RecordNotFoundException ;
	  public void deleteOrderItems();
}
