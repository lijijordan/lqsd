package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;

import com.lqsd.dao.CityDao;
import com.lqsd.entity.City;

@Repository
public class CityDaoImpl extends GenericDaoImpl<City, String> implements CityDao{
	
	public CityDaoImpl() {
		super(City.class);
	}
}
