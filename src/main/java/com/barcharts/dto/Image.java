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
	@Table(name="image")
	public class Image implements Serializable {
	
		
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
	
	@Id
	private String imageid;
	private String name;
	private String type;
	private String category;
	private String description;
	private String color;
	private String charecterstic;
	@Lob
	@Basic(fetch=FetchType.LAZY)
	private byte[]  image;
	@Transient
	private String getimage;
	private int rank;

	public String getImageid() {
		return imageid;
	}
	public void setImageid(String imageid) {
		this.imageid = imageid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getCharecterstic() {
		return charecterstic;
	}
	public void setCharecterstic(String charecterstic) {
		this.charecterstic = charecterstic;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public String getGetimage() {
		return getimage;
	}
	public void setGetimage(String getimage) {
		this.getimage = getimage;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public Image(String imageid, String name, String type, String category, String description, String color,
			String charecterstic, byte[] image, String getimage, int rank) {
		super();
		this.imageid = imageid;
		this.name = name;
		this.type = type;
		this.category = category;
		this.description = description;
		this.color = color;
		this.charecterstic = charecterstic;
		this.image = image;
		this.getimage = getimage;
		this.rank = rank;
	}
	
	
	
	
	
	
	}