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
@Table(name = "orders")
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
	
	@ManyToOne
    @JoinColumn(name="user_id")
	private User user;
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column
	int product_id;  //3
	
	@Column
	Date order_date;  //4
	
	@Column
	int quantity;  //5
	
	public Order() 
	{
		super();
		
	}

	public Order(int order_id,/* int user_id, */  User user, int product_id, Date order_date, int quantity)
	{
		super();
		this.order_id = order_id;
	//	this.user_id = user_id;
		this.user = user;
		
		this.product_id = product_id;
		this.order_date = order_date;
		this.quantity = quantity;
	}
	
	
	public Order( /*int user_id,*/User user,  int product_id, Date order_date, int quantity)
	{
		super();		
	//	this.user_id = user_id;
		this.user = user;
		
		this.product_id = product_id;
		this.order_date = order_date;
		this.quantity = quantity;
	}
	
	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
/*
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
*/
	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() 
	{
		return "Order [order_id=" + order_id +/* ", user_id=" + user_id + */", product_id=" + product_id + ", order_date="+ order_date + ", quantity=" + quantity + "]";
	}
	
	
	
	
	
	
}
