package com.lqsd.dao.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.lqsd.dao.StaffDao;
import com.lqsd.entity.Staff;
/**
 * 
 * @author lijib
 *
 */

@ContextConfiguration(
        locations = {"classpath:/spring-ioc-config.xml"})
@TransactionConfiguration(transactionManager = "txManager", defaultRollback = false)  
public class StaffDaoTest extends BaseDaoTestCase{

	@Autowired
	private StaffDao staffDao;
	
	
	@Test
	public void testSave(){
		Staff s1 = new Staff();
		s1.setName("2222222");
		s1.setPassword("123456");
		staffDao.save(s1);
	}
	
}
