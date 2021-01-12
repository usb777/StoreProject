package com.store.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Usertype 
{
	@Id
	@GeneratedValue
	@Column(name = "usertype_id")
	int usertype_id;
	
	@Column
	String usertype_name;
	
	
	
	
	

	public Usertype() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public Usertype(int usertype_id, String usertype_name) 
	{
		super();
		this.usertype_id = usertype_id;
		this.usertype_name = usertype_name;
	}
	
	public Usertype( String usertype_name) 
	{
		super();		
		this.usertype_name = usertype_name;
	}


	public int getUsertype_id() {
		return usertype_id;
	}

	public void setUsertype_id(int usertype_id) {
		this.usertype_id = usertype_id;
	}

	public String getUsertype_name() {
		return usertype_name;
	}

	public void setUsertype_name(String usertype_name) {
		this.usertype_name = usertype_name;
	}
	
	
	
	

}
