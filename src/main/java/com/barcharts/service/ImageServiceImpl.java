package com.barcharts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.barcharts.dao.ImageDao;
import com.barcharts.dto.Image;
import com.barcharts.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService {

	@Autowired
	private ImageDao imageDao;

	@Override
	@Transactional
	public void save(Image image) {
		// TODO Auto-generated method stub
		imageDao.save(image);
		
	}

	@Override
	@Transactional
	public List<Image> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public Image getbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
