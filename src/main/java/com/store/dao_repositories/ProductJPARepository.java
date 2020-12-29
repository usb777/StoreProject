package com.store.dao_repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.store.model.Product;


@Repository
public interface ProductJPARepository extends JpaRepository<Product, Integer> 
{

}
