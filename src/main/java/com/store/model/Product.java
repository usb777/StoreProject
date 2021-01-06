package com.store.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table
@JsonIgnoreProperties({ "productimage"})

public class Product {

	@Id
	@GeneratedValue
	@Column(name = "product_id")
	private int product_id;
	
	@Column
	private String  productName;
	
	@Column
	@Lob
	private byte[] productimage; // ByteArray
	
	
	

	@Column
	private String description;
	@Column
	private double price;
	
	@Column
	private int quantity;

	//default constructor
	public Product()
	{
		super();
	}
	
	
	public Product(int product_id, String productName, 	byte[] productimage, String description, double price,	int quantity) 
	{
		super();
		this.product_id = product_id;
		this.productName = productName;
		this.productimage = productimage;
		this.description = description;
		this.price = price;
		this.quantity = quantity;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	

	
	public byte[] getProductimage() {
		return productimage;
	}


	public void setProductimage(byte[] productimage) {
		this.productimage = productimage;
	}
	
	
}
