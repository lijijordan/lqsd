package com.lqsd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "staff")
public class Staff extends BaseEntity{

	@Column
	private String name;
	
	@Column
	private String password;
	
	/*
	 * 员工属于哪个站点
	 */
	@ManyToOne()
	@JoinColumn(name = "id_site")
	private Site site;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}
	
}
