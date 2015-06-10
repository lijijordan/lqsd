package com.lqsd.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 分站点，一个加盟商对应一个分站点
 * @author lijib
 *
 */
@Entity
@Table(name = "site")
public class Site extends BaseEntity{

	@Column(name = "name")
	private String name;
	
	@Column
	private String domain;
	
	@Column
	private int num;
	
	@Column
	private String phone;
	
	@Column
	private String address;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "site")
	private List<Staff> staffs;
	
	/*
	 * 支付方式 
	 */
	@Column
	private String bank;
	
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public List<Staff> getStaffs() {
		return staffs;
	}

	public void setStaffs(List<Staff> staffs) {
		this.staffs = staffs;
	}
	
	
}
