package com.barcharts.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="addtag")
public class AddTag implements Serializable{
	
	
	private static final long serialVersionUID = 1L;

	@Id
	private String userid;
	
	private String imageid;
	
	private String message;
	
	public AddTag() {
		super();
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getImageid() {
		return imageid;
	}

	public void setImageid(String imageid) {
		this.imageid = imageid;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public AddTag(String userid, String imageid, String message) {
		super();
		this.userid = userid;
		this.imageid = imageid;
		this.message = message;
	}
	
	
	
	
	
	
	

}
