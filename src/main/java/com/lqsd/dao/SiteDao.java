package com.lqsd.dao;

import java.util.List;

import com.lqsd.entity.Site;

public interface SiteDao extends GenericDao<Site, String>{

	List<Site> getSites();

}
