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
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Table(name = "user")
public class User 
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	@Column(name = "user_id")
	
	int user_id;	
	
	@Column(name = "dateof_birth")
	Date dateof_birth;
	
	@Column(name = "job")
	String job;
	
	@Column(name = "name")
	String name;
	
	@Column(name = "age")
	int age;
	
	@Column(name = "email")
	String email;
	
	@Column(name = "is_enabled")
	boolean is_enabled;
	
	@Column(name = "password")
	String password;
	
	@Column(name = "username")
	String username;
	
	@Column(name = "usertype_id")
	int usertype_id;
	
	@Column(name = "usercol")
	String usercol;
	
	public User() 
	{
		super();
	}
	//constructor
	public User(int user_id, Date dateof_birth, String job, String name, int age, String email, boolean is_enabled,
				String password, String username, int usertype_id, String usercol) 
	{
		super();
		this.user_id = user_id;
		this.dateof_birth = dateof_birth;
		this.job = job;
		this.name = name;
		this.age = age;
		this.email = email;
		this.is_enabled = is_enabled;
		this.password = password;
		this.username = username;
		this.usertype_id = usertype_id;
		this.usercol = usercol;
	}
	
	
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Date getDateof_birth() {
		return dateof_birth;
	}
	public void setDateof_birth(Date dateof_birth) {
		this.dateof_birth = dateof_birth;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isIs_enabled() {
		return is_enabled;
	}
	public void setIs_enabled(boolean is_enabled) {
		this.is_enabled = is_enabled;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getUsertype_id() {
		return usertype_id;
	}
	public void setUsertype_id(int usertype_id) {
		this.usertype_id = usertype_id;
	}
	public String getUsercol() {
		return usercol;
	}
	public void setUsercol(String usercol) {
		this.usercol = usercol;
	}



	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", dateof_birth=" + dateof_birth + ", job=" + job + ", name=" + name
				+ ", age=" + age + ", email=" + email + ", is_enabled=" + is_enabled + ", password=" + password
				+ ", username=" + username + ", usertype_id=" + usertype_id + ", usercol=" + usercol + "]";
	}
	
	

}
