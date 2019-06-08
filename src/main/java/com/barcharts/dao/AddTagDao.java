package com.barcharts.dao;

import java.util.List;


import com.barcharts.dto.AddTag;

public interface AddTagDao {
	
	public void save(AddTag addTag);
	public List<AddTag> list();
	public AddTag getbyid(int id);
	

}
