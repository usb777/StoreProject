package com.store.dao_repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.store.model.Usertype;

@Repository
public interface UsertypeJPARepository extends JpaRepository<Usertype, Integer>
{

}
