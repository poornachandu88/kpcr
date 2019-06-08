package com.barcharts.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.barcharts.dao.UserDetailsDao;
import com.barcharts.dto.UserDetails;
import com.barcharts.service.UserDetailsService;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserDetailsDao userDetailsDao;

	@Override
	@Transactional
	public void save(UserDetails userDetails) {
		// TODO Auto-generated method stub
         userDetailsDao.save(userDetails);
	}

	@Override
	@Transactional
	public List<UserDetails> list() {
		// TODO Auto-generated method stub
		return null;
	}

	

	@Override
	@Transactional
	public UserDetails getbyid(String uid) {
		// TODO Auto-generated method stub
		return userDetailsDao.getbyid(uid);
	}
	
}
