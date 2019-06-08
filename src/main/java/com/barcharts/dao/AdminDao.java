package com.barcharts.dao;

import java.util.List;



import com.barcharts.dto.Admin;

public interface AdminDao {
	
	public void save(Admin admin);
	public List<Admin> list();
	public Admin getbyid(String uid);
	
}
