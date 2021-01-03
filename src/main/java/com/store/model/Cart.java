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
public class Cart 
{
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "cart_id")	
	int cart_id;    //1	
		
	@Column
	int user_id;    //2
	
	@Column
	int product_id;  //3
	 
	@Column
	Date date_added;   //4
	
	@Column
	String email;           //5
	
	@Column
	int quantity;           //6

	public Cart()  
	{
		super();
	}	
		
	
	public Cart(int cart_id, int user_id, int product_id, Date date_added, String email, int quantity) 
	{
		super();
		this.cart_id = cart_id;
		this.user_id = user_id;
		this.product_id = product_id;
		this.date_added = date_added;
		this.email = email;
		this.quantity = quantity;
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


	public int getProduct_id() {
		return product_id;
	}


	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}


	public Date getDate_added() {
		return date_added;
	}


	public void setDate_added(Date date_added) {
		this.date_added = date_added;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", user_id=" + user_id + ", product_id=" + product_id + ", date_added="
				+ date_added + ", email=" + email + ", quantity=" + quantity + "]";
	}
	
	
	
	
	
	

}
