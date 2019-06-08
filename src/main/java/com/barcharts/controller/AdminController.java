package com.barcharts.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.barcharts.dto.Admin;
import com.barcharts.service.AdminService;

@Controller
public class AdminController {
	
	
	@Autowired
	private AdminService adminService;
	
	
	
	@RequestMapping("/adminlogintest")
	public ModelAndView adminlogin(@RequestParam ("adminid")String adminid , @RequestParam ("adminpwd") String adminpwd )
  
	{
		ModelAndView model=null;
		
		List<Admin> adminlist=adminService.list();
		
		for(Admin getadmin:adminlist)
		{
			System.out.println(getadmin.getAdminid());
				if(getadmin.getAdminid().equals(adminid)&&getadmin.getAdminpwd().equals(adminpwd))
				{
					model=new ModelAndView("home");
					model.addObject("adminsuccess", "Admin Login Success");
				    model.setViewName("adminhome");
				}
				else
				{
					model=new ModelAndView("home");
					model.addObject("adminfailure", "Admin Login Failure");
					model.addObject("title", "Home");
					model.addObject("AdminLogin", true);
				}
				
			
	  }
			
		
		
		return model;
	}
	
	
	
}
