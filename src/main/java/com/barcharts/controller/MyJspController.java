package com.barcharts.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class MyJspController {


	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView home()
	{
			ModelAndView model=new ModelAndView("home");
			model.addObject("title", "Home");
			model.addObject("home", "This is Home Page");
			
			return model;
	}
	

	@RequestMapping("/admin")
	public ModelAndView Logindb()
	{
		
		
		ModelAndView model=new ModelAndView("home");
		
		model.addObject("title", "AdminLogin");
		model.addObject("AdminLogin",true);
	
		return model;
	}
	@RequestMapping("/user")
	public ModelAndView userlogin()
	{
		
		
		ModelAndView model=new ModelAndView("home");
		
		model.addObject("title", "UserLogin");
		model.addObject("UserLogin",true);
	
		return model;
	}
	
	
}
