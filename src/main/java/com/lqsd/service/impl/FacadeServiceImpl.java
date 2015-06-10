package com.lqsd.service.impl;

import java.util.List;

import org.apache.commons.lang.NotImplementedException;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lqsd.commons.NurseType;
import com.lqsd.dao.ArticleDao;
import com.lqsd.dao.ImageDao;
import com.lqsd.dao.NurseDao;
import com.lqsd.dao.SiteDao;
import com.lqsd.dao.StaffDao;
import com.lqsd.entity.Article;
import com.lqsd.entity.Image;
import com.lqsd.entity.Nurse;
import com.lqsd.entity.Site;
import com.lqsd.entity.Staff;
import com.lqsd.service.FacadeService;

@Service
public class FacadeServiceImpl implements FacadeService {
	
	@Autowired
	private StaffDao staffDao;
	
	@Autowired
	private ImageDao imageDao;
	
	@Autowired
	private ArticleDao articleDao;
	
	@Autowired
	private SiteDao siteDao;
	
	@Autowired
	private NurseDao nurseDao;
	
	@Override
	public void saveStaff(Staff staff) {
		staffDao.saveOrUpdate(staff);
	}

	@Override
	public void saveImage(Image image) {
		imageDao.saveOrUpdate(image);
	}

	@Override
	public void saveArticle(Article article) {
		articleDao.saveOrUpdate(article);
	}

	@Override
	public List<Article> getArticles(String chanel) {
		return articleDao.query(chanel);
	}

	@Override
	public void removeArticle(String id) {
		articleDao.fockRemove(id);
	}

	@Override
	public Article getArticle(String id) {
		if(StringUtils.isNotEmpty(id)){
			return articleDao.get(id);
		}
		return null;
	}

	@Override
	public List<Staff> getStaffs() {
		return staffDao.getStaffs();
	}

	@Override
	public Staff getStaff(String id) {
		return staffDao.get(id);
	}

	@Override
	public void removeStaff(String id) {
		Staff staff = staffDao.get(id);
		staff.setDel(true);
		staffDao.saveOrUpdate(staff);
	}

	@Override
	public List<Site> getSites() {
		return siteDao.getSites();
	}

	@Override
	public Site getSite(String id) {
		return siteDao.get(id);
	}

	@Override
	public void removeSite(String id) {
		Site site = siteDao.get(id);
		site.setDel(true);
		siteDao.saveOrUpdate(site);
	}

	@Override
	public void saveSite(Site site) {
		List<Staff> list = site.getStaffs();
		if(list != null){
			for (Staff s : list) {
				s = staffDao.get(s.getId());
				s.setSite(site);
				staffDao.save(s);
			}
			site.setStaffs(list);
		}
		siteDao.saveOrUpdate(site);
	}

	@Override
	public void saveSite(Site site, String[] staffs) {
		throw new NotImplementedException();
	}

	@Override
	public List<Nurse> getNurses() {
		return nurseDao.getNurses();
	}

	@Override
	public Nurse getNurse(String id) {
		return nurseDao.get(id);
	}

	@Override
	public void removeNurse(String id) {
		Nurse n = nurseDao.get(id);
		n.setDel(true);
		nurseDao.saveOrUpdate(n);
	}

	@Override
	public void saveNurse(Nurse nurse) {
		nurseDao.saveOrUpdate(nurse);
	}

	@Override
	public List<Nurse> getNurses(NurseType type) {
		return nurseDao.getNurses(type);
	}
	
}
