package com.lqsd.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table
public class Comment extends BaseEntity{
	
	@Column
	private String text;
	
	@ManyToOne()
	@JoinColumn(name = "id_customer")
	private Customer customer;
	
	
	@ManyToOne()
	@JoinColumn(name = "id_nurse")
	private Nurse nurse;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
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
	
}
