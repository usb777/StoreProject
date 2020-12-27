package com.store.services;

import java.util.List;

import com.store.exception.RecordNotFoundException;
import com.store.model.Usertype;


public interface IUsertypeService 
{
	  public List<Usertype> getUsertypes();
	  public Usertype getUsertypeByID(int id)throws RecordNotFoundException;
	  public Usertype saveNewUsertype(Usertype usertype);
	  public Usertype updateUsertype(Usertype usertype)throws RecordNotFoundException;
	  public void deleteUsertype(int id) throws RecordNotFoundException ;
	  public void deleteAllUsertypes();
}
