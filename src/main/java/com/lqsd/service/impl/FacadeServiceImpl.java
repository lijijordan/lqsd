package com.lqsd.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lqsd.dao.StaffDao;
import com.lqsd.entity.Staff;
import com.lqsd.service.FacadeService;

@Service
public class FacadeServiceImpl implements FacadeService {
	
	@Autowired
	private StaffDao staffDao;

	@Override
	public void saveStaff(Staff staff) {
		staffDao.saveOrUpdate(staff);
	}

}
