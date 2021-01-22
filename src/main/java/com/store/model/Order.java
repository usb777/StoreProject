package com.store.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "order")
public class Order
{

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "order_id")
	int order_id;  //1
	
	

	/*
	@Column
	int user_id; //2
	*/
	/*
	@ManyToOne
    @JoinColumn(name="user_id")
	private User user;
	*/
	@Column
	int user_id;
	
	
	public Order() 
	{
		super();		
	}
	
	public Order( int user_id) 
	{
		super();		
		this.user_id = user_id;
	}
	
	public Order(int order_id, int user_id) 
	{
		super();
		this.order_id = order_id;
		this.user_id = user_id;
	}
	
	
	
	
	
	
	
	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() 
	{		return "Order [order_id=" + order_id + ", user_id=" + user_id + "]";	}



	
	
	
}
