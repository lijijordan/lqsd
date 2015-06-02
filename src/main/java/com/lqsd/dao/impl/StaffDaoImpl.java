package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;

import com.lqsd.dao.StaffDao;
import com.lqsd.entity.Staff;

@Repository
public class StaffDaoImpl extends GenericDaoImpl<Staff, String> implements StaffDao{

	public StaffDaoImpl() {
		super(Staff.class);
	}
}
