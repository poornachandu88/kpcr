package com.barcharts.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.barcharts.dto.Admin;






@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	   private SessionFactory sessionFactory;

	@Override
	public void save(Admin admin) {
		// TODO Auto-generated method stub
		
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Admin> list() {
		// TODO Auto-generated method stub
		List<Admin> adminlist=null;
		
		adminlist=(List<Admin>) sessionFactory.getCurrentSession().createCriteria(Admin.class).list();
		
		return adminlist;
	}

	@Override
	public Admin getbyid(String adminid) {
		// TODO Auto-generated method stub
		
	return sessionFactory.getCurrentSession().get(Admin.class, adminid);
	}
	
	
}
