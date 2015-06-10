package com.lqsd.dao;

import java.util.List;

import com.lqsd.commons.NurseType;
import com.lqsd.entity.Nurse;

public interface NurseDao extends GenericDao<Nurse, String>{

	List<Nurse> getNurses();

	List<Nurse> getNurses(NurseType type);

}
