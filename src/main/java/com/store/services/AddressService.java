package com.store.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.AddressJPARepository;
import com.store.exception.RecordNotFoundException;

import com.store.model.Address;

@Service
@Transactional
public class AddressService implements IAddressService 
{
	@Autowired
    private AddressJPARepository addressRepository;

	@Override
	public List<Address> getAddresses() 
	{
		 return this.addressRepository.findAll();
	}

	@Override
	public Address getAddressByID(int id) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address saveNewAddress(Address address) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address updateAddress(Address address) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteAddress(int id) throws RecordNotFoundException 
	{
		// TODO Auto-generated method stub
	}

	@Override
	public void deleteAllAddress() {
		// TODO Auto-generated method stub

	}

}
