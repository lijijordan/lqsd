package com.lqsd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


@Entity
@Table(name = "customer")
public class Customer extends BaseEntity{

	@Column
	private String name;
	
	@Column
	private String phone;
	
	/*
	 * 站点id 
	 * 建立弱关联
	 */
	@Column
	private String siteId;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

}
