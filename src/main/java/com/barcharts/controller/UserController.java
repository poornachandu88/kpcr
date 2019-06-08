package com.barcharts.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.barcharts.dto.UserDetails;
import com.barcharts.service.UserDetailsService;

@RestController
public class UserController {
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	
	
	@RequestMapping("/userlogintest")
	public ModelAndView userlogintest(@RequestParam ("uid")String uid , @RequestParam ("pwd") String pwd )
  
	{
		
		UserDetails userDetails	=new UserDetails();
		
	      userDetails= userDetailsService.getbyid(uid);
		ModelAndView model=new ModelAndView("home");
		if(userDetails.getUserid().equals(uid)&&userDetails.getUserpwd().equals(pwd))
		{
			model.addObject("successmsg", "User Login Success");
			model.setViewName("userhome");
			
		}
		else
		{
			model.addObject("failuremsg", "User Login Failure");
			model.setViewName("userlogin");
		}
	
		
		model.addObject("title", "UserLogin");
		model.addObject("UserLogin",true);
	
		return model;
	}

	@RequestMapping(value="/newuser",method=RequestMethod.GET)
	public ModelAndView 	newuser( @ModelAttribute ("userDetails")UserDetails userDetails)
	{
		/*UserDetails u	=new UserDetails(userDetails.getUid(),userDetails.getFname(),userDetails.getLname(),userDetails.getEmail(),userDetails.getPwd(),userDetails.getDob(),userDetails.getGender(),userDetails.getAddress(),userDetails.getMobile(),userDetails.getStatus(),userDetails.getPic());
		
		if we take default constructor we have to pass the all values null not accept  but se
		*
		*/
		
		UserDetails u=new UserDetails();
		u.setUserid(userDetails.getUserid());
		u.setFname(userDetails.getFname());
		u.setLname(userDetails.getLname());
		u.setEmail(userDetails.getEmail()	);
		u.setUserpwd(userDetails.getUserpwd());
		u.setDob(userDetails.getDob());
		u.setGender(userDetails.getGender());
		u.setAddress(userDetails.getAddress());
		u.setMobile(userDetails.getMobile());
		u.setStatus(userDetails.getStatus());
	
		
		
		System.out.println(userDetails.getEmail());
		userDetailsService.save(u);
		ModelAndView model=new ModelAndView("home");
	
		model.setViewName("userlogin");
	
		model.setViewName("newuser");


		
		
		model.addObject("title", "UserLogin");
		model.addObject("UserLogin",true);
	
		return model;
	}
	
	@RequestMapping("/userregform")
	public ModelAndView userregform()
	{ 
		
		
		ModelAndView model=new ModelAndView("home","userDetails",new UserDetails());

		model.addObject("title", "UserForm");
		model.addObject("UserForm",true);
	
		return model;
	}
}
