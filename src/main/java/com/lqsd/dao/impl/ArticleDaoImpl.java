package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;
import com.lqsd.dao.ArticleDao;
import com.lqsd.entity.Article;

@Repository
public class ArticleDaoImpl extends GenericDaoImpl<Article, String> implements ArticleDao{

	public ArticleDaoImpl() {
		super(Article.class);
	}
}
