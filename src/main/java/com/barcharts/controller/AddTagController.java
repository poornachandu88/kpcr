package com.barcharts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.barcharts.service.AddTagService;

@Controller
public class AddTagController {

	@Autowired
	private AddTagService addTagService;
	
}
