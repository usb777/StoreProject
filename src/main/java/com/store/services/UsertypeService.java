package com.store.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.store.dao_repositories.UsertypeJPARepository;
import com.store.exception.RecordNotFoundException;
import com.store.model.Usertype;

@Service
@Transactional
public class UsertypeService implements IUsertypeService 
{
	@Autowired
    private UsertypeJPARepository usertypeRepository;

	@Override
	public List<Usertype> getUsertypes() 
	{
		 return this.usertypeRepository.findAll();
	}

	@Override
	public Usertype getUsertypeByID(int id) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usertype saveNewUsertype(Usertype usertype) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usertype updateUsertype(Usertype usertype) throws RecordNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUsertype(int id) throws RecordNotFoundException {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAllUsertypes() {
		// TODO Auto-generated method stub

	}

}
