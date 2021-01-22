package com.store.dao_repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.store.model.OrderItem;


@Repository
public interface OrderItemJPARepository extends JpaRepository<OrderItem, Integer>
{

}
