package com.barcharts.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.barcharts.dao.ImageDao;
import com.barcharts.dto.Image;

@Repository
public class ImageDaoImpl implements ImageDao {

	@Autowired
	   private SessionFactory sessionFactory;

	@Override
	public void save(Image image) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(image);
	}

	@Override
	public List<Image> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Image getbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}
