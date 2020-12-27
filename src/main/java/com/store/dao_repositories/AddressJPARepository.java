package com.store.dao_repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.store.model.Address;


@Repository
public interface AddressJPARepository extends JpaRepository<Address, Integer> 
{

}
