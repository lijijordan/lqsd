package com.lqsd.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.lqsd.dao.StaffDao;
import com.lqsd.entity.Staff;

@Repository
public class StaffDaoImpl extends GenericDaoImpl<Staff, String> implements StaffDao{

	public StaffDaoImpl() {
		super(Staff.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Staff> getStaffs() {
		Criteria criteria = getSession().createCriteria(Staff.class);
		criteria.add(Restrictions.eq("isDel", false));
		criteria.addOrder(Order.desc("createTime"));
		return criteria.list();
	
	}
}
