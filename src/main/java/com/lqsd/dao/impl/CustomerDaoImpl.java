package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;

import com.lqsd.dao.CustomerDao;
import com.lqsd.entity.Customer;

@Repository
public class CustomerDaoImpl extends GenericDaoImpl<Customer, String> implements CustomerDao{

	public CustomerDaoImpl() {
		super(Customer.class);
	}
}
