package com.store.dao_repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.store.model.Cart;


@Repository
public interface CartJPARepository  extends JpaRepository<Cart, Integer>
{

}
