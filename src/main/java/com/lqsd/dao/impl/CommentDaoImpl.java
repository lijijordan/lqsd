package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;
import com.lqsd.dao.CommentDao;
import com.lqsd.entity.Comment;


@Repository
public class CommentDaoImpl extends GenericDaoImpl<Comment, String> implements CommentDao{
	
	public CommentDaoImpl() {
		super(Comment.class);
	}
}
