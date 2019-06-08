package com.barcharts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.barcharts.dao.AddTagDao;
import com.barcharts.dto.AddTag;
import com.barcharts.service.AddTagService;
@Service
public class AddTagServiceImpl implements AddTagService {

	@Autowired
	private AddTagDao addTagDao;

	@Override
	@Transactional
	public void save(AddTag addTag) {
		// TODO Auto-generated method stub
		addTagDao.save(addTag);
		
	}

	@Override
	@Transactional
	public List<AddTag> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AddTag getbyid(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
