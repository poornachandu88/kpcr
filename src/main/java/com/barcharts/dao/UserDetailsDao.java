package com.barcharts.dao;

import java.util.List;


import com.barcharts.dto.UserDetails;

public interface UserDetailsDao  {
	
	public void save(UserDetails userDetails);
	public List<UserDetails> list();
	public UserDetails getbyid(String uid);

}
