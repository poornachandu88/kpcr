package com.barcharts.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="admin")
public class Admin implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(nullable=false)
	private String adminid;
	@Column(nullable=false)
	private String adminpwd;
	public Admin() {
		super();
	}
	public Admin(String adminid, String adminpwd) {
		super();
		this.adminid = adminid;
		this.adminpwd = adminpwd;
	}
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
	
	
	
	
	

}
