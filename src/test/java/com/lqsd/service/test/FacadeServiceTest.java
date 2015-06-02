package com.lqsd.service.test;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.transaction.TransactionConfiguration;

import com.lqsd.dao.test.BaseDaoTestCase;
import com.lqsd.entity.Staff;
import com.lqsd.service.FacadeService;



@ContextConfiguration(
        locations = {"classpath:/spring-ioc-config.xml"})
@TransactionConfiguration(transactionManager = "txManager", defaultRollback = false)  
public class FacadeServiceTest extends BaseDaoTestCase{

	
	@Autowired
	private FacadeService facadeService;
	
	@Test
	public void testSaveStaff(){
		Staff s1 = new Staff();
		s1.setName("4444");
		s1.setPassword("123456");
		facadeService.saveStaff(s1);
	}
	
}
