package com.lqsd.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.lqsd.commons.NurseType;

@Entity
@Table(name = "nurse")
public class Nurse extends BaseEntity{
	
	@OneToMany(mappedBy = "id")
	private List<Comment> comments;
	
	
	@OneToMany(mappedBy = "id")
	private List<Order> orders;
	
	@Column
	private NurseType nurseType;
	
	@Column
	private String level;
	
	@Column
	private String authenticate;

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public NurseType getNurseType() {
		return nurseType;
	}

	public void setNurseType(NurseType nurseType) {
		this.nurseType = nurseType;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getAuthenticate() {
		return authenticate;
	}

	public void setAuthenticate(String authenticate) {
		this.authenticate = authenticate;
	}
	
	
	
	
}
