package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;

import com.lqsd.dao.OrderDao;
import com.lqsd.entity.Order;

@Repository
public class OrderDaoImpl extends GenericDaoImpl<Order, String> implements OrderDao{

	public OrderDaoImpl() {
		super(Order.class);
	} 

}
