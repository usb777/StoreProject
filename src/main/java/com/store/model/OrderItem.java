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
@Table(name = "order_item")
public class OrderItem
{

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "id")
	int id;  //1
	
	@Column
	int order_id; //2
	
	@ManyToOne
    @JoinColumn(name="product_id")   //3
	private Product product;
	
	@Column
	Date date_added;                  //4
	
	@Column
	int quantity;                     //5
	
	
	
	public OrderItem() 
	{
		super();		
	}

	public OrderItem(int id, int order_id, Product product, Date date_added, int quantity) 
	{
		super();
		this.id = id;
		this.order_id = order_id;
		this.product = product;
		this.date_added = date_added;
		this.quantity = quantity;
	}
	
	
	public OrderItem( int order_id, Product product, Date date_added, int quantity) 
	{
		super();		
		this.order_id = order_id;
		this.product = product;
		this.date_added = date_added;
		this.quantity = quantity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getDate_added() {
		return date_added;
	}

	public void setDate_added(Date date_added) {
		this.date_added = date_added;
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
		return "OrderItem [id=" + id + ", order_id=" + order_id + ", product=" + product + ", date_added=" + date_added	+ ", quantity=" + quantity + "]";	
	}
	
	
	
	
	
}
