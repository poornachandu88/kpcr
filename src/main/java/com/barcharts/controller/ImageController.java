package com.barcharts.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RestController;

import com.barcharts.service.ImageService;

@RestController
public class ImageController {

	@Autowired
	private ImageService imageService;
	
	
}
