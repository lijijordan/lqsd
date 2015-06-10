package com.lqsd.dao;

import java.util.List;

import com.lqsd.entity.Staff;

public interface StaffDao extends GenericDao<Staff, String>{

	List<Staff> getStaffs();

}
