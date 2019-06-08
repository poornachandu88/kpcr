package com.barcharts.dao;

import java.util.List;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.barcharts.dao.AddTagDao;
import com.barcharts.dto.AddTag;



@Repository
public class AddTagDaoImpl implements AddTagDao {

	@Autowired
	   private SessionFactory sessionFactory;
	
	 public void save(AddTag addTag) {
	      sessionFactory.getCurrentSession().save(addTag);
	   }

	@Override
	public List<AddTag> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AddTag getbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
