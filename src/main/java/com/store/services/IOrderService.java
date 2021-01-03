package com.store.services;

import java.util.List;

import com.store.exception.RecordNotFoundException;
import com.store.model.Order;

public interface IOrderService
{
	  public List<Order> getOrders();
	  public Order getOrderByID(int orderId)throws RecordNotFoundException;
	  public Order saveNewOrder(Order order);
	  public Order updateOrder(Order order)throws RecordNotFoundException;
	  public void deleteOrder (int orderId) throws RecordNotFoundException ;
	  public void deleteOrders();
}
