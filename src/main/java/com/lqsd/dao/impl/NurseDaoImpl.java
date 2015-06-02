package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;

import com.lqsd.dao.NurseDao;
import com.lqsd.entity.Nurse;

@Repository
public class NurseDaoImpl extends GenericDaoImpl<Nurse, String> implements NurseDao{
	public NurseDaoImpl() {
		super(Nurse.class);
	}
}
