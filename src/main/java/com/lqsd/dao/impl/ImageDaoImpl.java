package com.lqsd.dao.impl;

import org.springframework.stereotype.Repository;
import com.lqsd.dao.ImageDao;
import com.lqsd.entity.Image;


@Repository
public class ImageDaoImpl extends GenericDaoImpl<Image, String> implements ImageDao{

	public ImageDaoImpl() {
		super(Image.class);
	}

}
