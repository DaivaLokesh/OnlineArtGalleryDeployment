package com.klu.jfsd.springBoot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.springBoot.model.Admin;
import com.klu.jfsd.springBoot.model.Customer;
import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminservice;

	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String unmae=request.getParameter("ausername");
		String pwd=request.getParameter("apwd");
		
		Admin admin=adminservice.checkAdminLogin(unmae, pwd);
		if(admin!=null) {
			mv.setViewName("adminhome");
		}
		else {
			mv.setViewName("adminlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallcustomers");
		
		List<Customer> customers=adminservice.viewAllCustomers();
		mv.addObject("customerlist", customers);
		return mv;
	}
	
	@GetMapping("viewallsellers")
	public ModelAndView viewallsellers() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallsellers");
		
		List<Seller> sellers=adminservice.viewAllSellers();
		mv.addObject("customerlist", sellers);
		return mv;
	}
	
}
