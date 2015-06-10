package com.lqsd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.lqsd.commons.ImageType;


@Entity
@Table(name = "image")
public class Image extends BaseEntity{

	@Column
	private String url;
	
	@Column
	private ImageType imageType;
	
	@OneToOne()
	@JoinColumn(name = "id_article")
	private Article article;
	
	
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

	public boolean isShow() {
		return isShow;
	}

	public void setShow(boolean isShow) {
		this.isShow = isShow;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}
	
	
	
}
