package com.barcharts.service;

import java.util.List;


import com.barcharts.dto.UserDetails;

public interface UserDetailsService {
	
	public void save(UserDetails userDetails);
	public List<UserDetails> list();
	public UserDetails getbyid(String uid);

}
