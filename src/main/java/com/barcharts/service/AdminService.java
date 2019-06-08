package com.barcharts.service;

import java.util.List;

import com.barcharts.dto.Admin;

public interface AdminService {
	public void save(Admin admin);
	public List<Admin> list();
	public Admin getbyid(String uid);
	
}
