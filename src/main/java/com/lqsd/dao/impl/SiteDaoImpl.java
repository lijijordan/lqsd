package com.lqsd.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.lqsd.dao.SiteDao;
import com.lqsd.entity.Site;

@Repository
public class SiteDaoImpl extends GenericDaoImpl<Site, String> implements SiteDao{

	public SiteDaoImpl() {
		super(Site.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Site> getSites() {
		Criteria criteria = getSession().createCriteria(Site.class);
		criteria.add(Restrictions.eq("isDel", false));
		criteria.addOrder(Order.desc("createTime"));
		return criteria.list();
	}
	
	
}
