package com.lqsd.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name = "t_order")
public class Order extends BaseEntity{
	
	@Column
	private Date date;
	
	@Column
	private String address;
	
	@Column
	private String message;
	
	@ManyToOne()
	@JoinColumn(name = "id_nurse")
	private Nurse nurse;
	
	@ManyToOne()
	@JoinColumn(name = "id_customer")
	private Customer customer;
	
	/*
	 * 站点id 
	 * 建立弱关联
	 */
	@Column
	private String siteId;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Nurse getNurse() {
		return nurse;
	}

	public void setNurse(Nurse nurse) {
		this.nurse = nurse;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

}
