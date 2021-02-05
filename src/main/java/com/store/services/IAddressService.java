package com.store.services;

import java.util.List;

import com.store.exception.RecordNotFoundException;
import com.store.model.Address;

public interface IAddressService 
{
	  public List<Address> getAddresses();
	  public Address getAddressByID(int id)throws RecordNotFoundException;
	  public Address saveNewAddress(Address usertype);
	  public Address updateAddress(Address usertype)throws RecordNotFoundException;
	  public void deleteAddress(int id) throws RecordNotFoundException ;
	  public void deleteAllAddress();
}
