package com.lqsd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.lqsd.commons.ImageType;


@Entity
@Table(name = "image")
public class Image extends BaseEntity{

	@Column
	private String url;
	
	@Column
	private ImageType imageType;
	
	@Column
	private int num;
	
	@Column
	private boolean isShow;

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public ImageType getImageType() {
		return imageType;
	}

	public void setImageType(ImageType imageType) {
		this.imageType = imageType;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public boolean isShow() {
		return isShow;
	}

	public void setShow(boolean isShow) {
		this.isShow = isShow;
	}
	
	
	
}
