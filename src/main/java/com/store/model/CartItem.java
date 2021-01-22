package com.store.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="cart_item")
public class CartItem 
{
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "id")	
	int id;    //1	
	
	@Column
	int cart_id;    //2  JOIN Column
	/*
	@Column
	int product_id;    //3  JOIN Column
	*/
	
	@ManyToOne
    @JoinColumn(name="product_id")
	private Product product;
	
	
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Column 
	int quantity;      //4
	
	@Column
	Date date_added;    //5

	public int getId()
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public int getCart_id() 
	{
		return cart_id;
	}

	public void setCart_id(int cart_id)
	{
		this.cart_id = cart_id;
	}
/*
	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id)
	{
		this.product_id = product_id;
	}
*/
	public int getQuantity() 
	{
		return quantity;
	}

	public void setQuantity(int quantity) 
	{
		this.quantity = quantity;
	}

	public Date getDate_added()
	{
		return date_added;
	}

	public void setDate_added(Date date_added)
	{
		this.date_added = date_added;
	}
	
	public CartItem()
	{
		super();		
	}
	
	

	public CartItem(int id, int cart_id, /*int product_id */   Product product, int quantity, Date date_added) {
		super();
		this.id = id;
		this.cart_id = cart_id;
		//this.product_id = product_id;
		this.quantity = quantity;
		this.date_added = date_added;
	}
	
	public CartItem( int cart_id, /* int product_id  */ Product product, int quantity, Date date_added) 
	{
		super();
		
		this.cart_id = cart_id;
		//this.product_id = product_id;
		this.product = product;
		this.quantity = quantity;
		this.date_added = date_added;
	}

	@Override
	public String toString()
	{
		return "CartItem [id=" + id + ", cart_id=" + cart_id + ", product=" + product + ", quantity=" + quantity	+ ", date_added=" + date_added + "]";
	}
	
	
	
	

}
