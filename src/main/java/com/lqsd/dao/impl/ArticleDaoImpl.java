package com.lqsd.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.lqsd.dao.ArticleDao;
import com.lqsd.entity.Article;

@Repository
public class ArticleDaoImpl extends GenericDaoImpl<Article, String> implements ArticleDao{

	public ArticleDaoImpl() {
		super(Article.class);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> query(String chanel) {
		Criteria criteria = getSession().createCriteria(Article.class);
		if(StringUtils.isNotEmpty(chanel)){
			criteria.add(Restrictions.eq("channel", chanel));
		}
		criteria.add(Restrictions.eq("isDel", false));
		criteria.addOrder(Order.desc("createTime"));
		return criteria.list();
	}
	
	@Override
	public void fockRemove(String id) {
		Article article = get(id);
		article.setDel(true);
		saveOrUpdate(article);
	}
}
