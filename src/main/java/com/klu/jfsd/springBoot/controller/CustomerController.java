package com.klu.jfsd.springBoot.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.springBoot.model.Customer;
import com.klu.jfsd.springBoot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;


@Controller
public class CustomerController 
{

	@Autowired
	private CustomerService customerService;
	@GetMapping("/customerreg")
	public ModelAndView customerreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerreg");
		return mv;
	}
	@GetMapping("/customerlogin")
	public ModelAndView customerlogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	
	@PostMapping("/insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request) {
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		String password=request.getParameter("cpwd");
		
		Customer customer=new Customer();
		customer.setName(name);
		customer.setGender(gender);
		customer.setDateofbirth(dob);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setContactno(contact);
		customer.setLocation(location);
		
		String message=customerService.customerRegistration(customer);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message",message);
		return mv;
	}
	
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv=new ModelAndView();
		String cemail=request.getParameter("cemail");
		String cpwd=request.getParameter("cpwd");
		
		Customer c=customerService.checkCustomerLogin(cemail, cpwd);
		if(c!=null) {
			mv.setViewName("customerhome");
		}
		else {
			mv.setViewName("customerlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
		
	}
}
