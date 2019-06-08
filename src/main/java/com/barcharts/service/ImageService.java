package com.barcharts.service;

import java.util.List;

import com.barcharts.dto.Image;

public interface ImageService {
	public void save(Image image);
	public List<Image> list();
	public Image getbyid(int id);
}
