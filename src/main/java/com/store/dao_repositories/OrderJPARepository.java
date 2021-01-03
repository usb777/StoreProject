package com.store.dao_repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.store.model.Order;


@Repository
public interface OrderJPARepository extends JpaRepository<Order, Integer>
{

}
