package com.lqsd.service;

import java.util.List;

import com.lqsd.commons.NurseType;
import com.lqsd.entity.Article;
import com.lqsd.entity.Image;
import com.lqsd.entity.Nurse;
import com.lqsd.entity.Site;
import com.lqsd.entity.Staff;

public interface FacadeService {

	public void saveStaff(Staff staff);

	public void saveImage(Image image);

	public void saveArticle(Article article);

	public List<Article> getArticles(String chanel);

	public void removeArticle(String id);

	public Article getArticle(String id);

	public List<Staff> getStaffs();

	public Staff getStaff(String id);

	public void removeStaff(String id);

	public List<Site> getSites();

	public Site getSite(String id);

	public void removeSite(String id);

	public void saveSite(Site site);

	public void saveSite(Site site, String[] staffs);

	public List<Nurse> getNurses();

	public Nurse getNurse(String id);

	public void removeNurse(String id);

	public void saveNurse(Nurse nurse);

	public List<Nurse> getNurses(NurseType type);
	
}
