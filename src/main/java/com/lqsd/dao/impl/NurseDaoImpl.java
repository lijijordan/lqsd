package com.lqsd.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.lqsd.commons.NurseType;
import com.lqsd.dao.NurseDao;
import com.lqsd.entity.Nurse;

@Repository
public class NurseDaoImpl extends GenericDaoImpl<Nurse, String> implements NurseDao{
	public NurseDaoImpl() {
		super(Nurse.class);
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Nurse> getNurses() {
		Criteria criteria = getSession().createCriteria(Nurse.class);
		criteria.add(Restrictions.eq("isDel", false));
		criteria.addOrder(Order.desc("createTime"));
		return criteria.list();
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Nurse> getNurses(NurseType type) {
		Criteria criteria = getSession().createCriteria(Nurse.class);
		criteria.add(Restrictions.eq("isDel", false));
		criteria.add(Restrictions.eq("nurseType", type));
		criteria.addOrder(Order.desc("createTime"));
		return criteria.list();
	}
}
