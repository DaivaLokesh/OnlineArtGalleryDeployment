package com.klu.jfsd.springBoot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.springBoot.model.Seller;
import com.klu.jfsd.springBoot.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class SellerController 
{
	@Autowired
	private SellerService sellerservice;

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("/home")
	public ModelAndView home2() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("/sellerreg")
	public ModelAndView customerreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerreg");
		return mv;
	}
	@GetMapping("/sellerlogin")
	public ModelAndView customerlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("sellerlogin");
		return mv;
	}
	@PostMapping("/insertseller")
	public ModelAndView insertseller(HttpServletRequest request) {
		String name=request.getParameter("sname");
		String email=request.getParameter("semail");
		String password=request.getParameter("spwd");
		String location=request.getParameter("slocation");
		String contact=request.getParameter("scontact");
		
		Seller seller=new Seller();
		seller.setName(name);
		seller.setEmail(email);
		seller.setPassword(password);
		seller.setLocation(location);
		seller.setContact(contact);
		
		String message=sellerservice.sellerRegistration(seller);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message",message);
		return mv;		
	}
	@PostMapping("checksellerlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String semail=request.getParameter("semail");
		String spwd=request.getParameter("spwd");
		Seller s=sellerservice.checkSellerLogin(semail,spwd);
		
		if(s!=null) {
			mv.setViewName("sellerhome");
		}
		else {
			mv.setViewName("sellerlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
		
	}
}
