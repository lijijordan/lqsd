package com.lqsd.dao;

import java.util.List;

import com.lqsd.entity.Article;

public interface ArticleDao extends GenericDao<Article, String>{

	List<Article> query(String chanel);
    
	void fockRemove(String id);
}
