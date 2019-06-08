package com.barcharts.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.barcharts.dto.UserDetails;

@Repository
public class UserDetailsDaoImpl implements UserDetailsDao{

	@Autowired
	   private SessionFactory sessionFactory;

	@Override
	public void save(UserDetails userDetails) {
		// TODO Auto-generated method stub
		
	sessionFactory.getCurrentSession().save(userDetails);
		
	}

	@Override
	public List<UserDetails> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDetails getbyid(String uid) {
		// TODO Auto-generated method stub
		UserDetails userDetails=new UserDetails();
		
		Session session=sessionFactory.openSession();
		userDetails=session.get(UserDetails.class, uid);
		return userDetails;
	}
}
