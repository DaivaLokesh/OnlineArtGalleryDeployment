package com.klu.jfsd.springBoot.service;

import java.util.List;

import com.klu.jfsd.springBoot.model.Admin;
import com.klu.jfsd.springBoot.model.Customer;
import com.klu.jfsd.springBoot.model.Seller;

public interface AdminService {

	public List<Customer> viewAllCustomers();
	public Admin checkAdminLogin(String uname,String pwd);
	public List<Seller> viewAllSellers();
}
