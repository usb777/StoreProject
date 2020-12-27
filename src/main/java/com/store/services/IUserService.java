package com.store.services;

import java.util.List;


import com.store.model.User;



public interface IUserService 
{
	
	  public List<User> getUsers();
	  public User getUserByID(int id);
	  public User saveNewUser(User u);
	  public User updateUser(User u);
	  public void deleteUser(int id);
}
