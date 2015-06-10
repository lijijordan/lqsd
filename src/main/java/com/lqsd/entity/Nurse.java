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
	
	@OneToMany(mappedBy = "id")
	private List<NurseImage> images;
	
	@Column
	private NurseType nurseType;
	
	/*
	 * 站点id 
	 * 建立弱关联
	 */
	@Column
	private String siteId;
	
	/*
	 * 级别
	 */
	@Column
	private String level;
	
	/*
	 * 认证信息
	 */
	@Column
	private String authenticate;
	
	/*
	 * 年龄
	 */
	@Column
	private int age;
	
	/*
	 * 保险编号
	 */
	@Column
	private int safetyCode;
	
	/*
	 * 所在地
	 */
	@Column
	private String location;
	
	/*
	 * 性别
	 */
	@Column
	private String sex;
	
	/*
	 * 证书
	 */
	@Column
	private String certificate;
	
	/*
	 * 工作年限
	 */
	@Column
	private int workedAge;
	
	/*
	 * 学历
	 */
	@Column
	private String educational;
	
	/*
	 * 家乡
	 */
	@Column
	private String hometown;
	
	/*
	 * 照顾过宝宝数量
	 */
	@Column
	private int numLookAfter;

	/*
	 * 基本技能
	 */
	@Column
	private String basicSkills;
	
	/*
	 * 高级技能
	 */
	@Column
	private String advancedSkills;
	
	/*
	 * 特殊技能 
	 */
	@Column
	private String specialSkills;
	
	
	
	
	
	public String getBasicSkills() {
		return basicSkills;
	}

	public void setBasicSkills(String basicSkills) {
		this.basicSkills = basicSkills;
	}

	public String getAdvancedSkills() {
		return advancedSkills;
	}

	public void setAdvancedSkills(String advancedSkills) {
		this.advancedSkills = advancedSkills;
	}

	public String getSpecialSkills() {
		return specialSkills;
	}

	public void setSpecialSkills(String specialSkills) {
		this.specialSkills = specialSkills;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCertificate() {
		return certificate;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}

	public int getWorkedAge() {
		return workedAge;
	}

	public void setWorkedAge(int workedAge) {
		this.workedAge = workedAge;
	}

	public String getEducational() {
		return educational;
	}

	public void setEducational(String educational) {
		this.educational = educational;
	}

	public String getHometown() {
		return hometown;
	}

	public void setHometown(String hometown) {
		this.hometown = hometown;
	}

	public int getNumLookAfter() {
		return numLookAfter;
	}

	public void setNumLookAfter(int numLookAfter) {
		this.numLookAfter = numLookAfter;
	}

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

	public List<NurseImage> getImages() {
		return images;
	}

	public void setImages(List<NurseImage> images) {
		this.images = images;
	}

	public String getSiteId() {
		return siteId;
	}

	public void setSiteId(String siteId) {
		this.siteId = siteId;
	}

	public int getSafetyCode() {
		return safetyCode;
	}

	public void setSafetyCode(int safetyCode) {
		this.safetyCode = safetyCode;
	}
	
	
	
	
}
