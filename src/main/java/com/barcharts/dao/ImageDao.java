package com.barcharts.dao;

import java.util.List;

import com.barcharts.dto.Admin;
import com.barcharts.dto.Image;

public interface ImageDao {
	
	public void save(Image image);
	public List<Image> list();
	public Image getbyid(int id);

}
