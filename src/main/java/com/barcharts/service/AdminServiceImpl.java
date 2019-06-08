package com.barcharts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.barcharts.dao.AdminDao;
import com.barcharts.dto.Admin;
import com.barcharts.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	@Transactional
	public void save(Admin admin) {
		// TODO Auto-generated method stub
		adminDao.save(admin);
		
	}

	@Override
	@Transactional
	public List<Admin> list() {
		// TODO Auto-generated method stub
		return adminDao.list();
	}

	@Override
	@Transactional
	public Admin getbyid(String uid) {
		// TODO Auto-generated method stub
		return adminDao.getbyid(uid);
	}

	
	
}
