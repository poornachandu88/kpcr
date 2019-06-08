package com.barcharts.service;

import java.util.List;

import com.barcharts.dto.AddTag;

public interface AddTagService {
	public void save(AddTag addTag);
	public List<AddTag> list();
	public AddTag getbyid(int id);
}
