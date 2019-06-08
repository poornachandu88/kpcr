package com.barcharts.dto;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="userdetails")
public class UserDetails implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	private String userid;
	private String fname ;
	private String lname;
	private String email;
	private String userpwd;
	private String dob;
	private String gender;
	private String address;
	private String mobile;
	private String status;
	
	@Lob @Basic(fetch = FetchType.LAZY)
	private byte[] profilepic;
	@Transient
	private String getprofilepic;
	
	public UserDetails() {
		super();
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public byte[] getProfilepic() {
		return profilepic;
	}

	public void setProfilepic(byte[] profilepic) {
		this.profilepic = profilepic;
	}

	public String getGetprofilepic() {
		return getprofilepic;
	}

	public void setGetprofilepic(String getprofilepic) {
		this.getprofilepic = getprofilepic;
	}

	public UserDetails(String userid, String fname, String lname, String email, String userpwd, String dob,
			String gender, String address, String mobile, String status, byte[] profilepic, String getprofilepic) {
		super();
		this.userid = userid;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.userpwd = userpwd;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.mobile = mobile;
		this.status = status;
		this.profilepic = profilepic;
		this.getprofilepic = getprofilepic;
	}
	
	

	
}
