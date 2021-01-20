package com.store.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table
public class Cart 
{
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "cart_id")	
	int cart_id;    //1	
		
	@Column
	int user_id;    //2  JOIN Column
	
	
	public Cart()  
	{
		super();
	}	
		
	
	public Cart(int cart_id, int user_id) 
	{
		super();
		this.cart_id = cart_id;
		this.user_id = user_id;
	
	}

	public Cart( int user_id, int product_id, Date date_added,  int quantity) 
	{
		super();		
		this.user_id = user_id;
	}
	
	public int getCart_id() {
		return cart_id;
	}


	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}


	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", user_id=" + user_id + "]";
	}
	
	
	
	
	
	

}
