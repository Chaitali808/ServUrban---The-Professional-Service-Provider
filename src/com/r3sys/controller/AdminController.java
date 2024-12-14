package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.r3sys.dao.AdminDao;
import com.r3sys.dao.ServiceProviderDao;
import com.r3sys.model.Admin;
import com.r3sys.model.ServiceProvider;

@Controller
public class AdminController 
{
		
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Admin admin = (Admin) context.getBean("admin");
	AdminDao adminDao =(AdminDao) context.getBean("adminDao");
	ServiceProvider serviceProvider = (ServiceProvider) context.getBean("serviceProvider");
	ServiceProviderDao serviceProviderDao = (ServiceProviderDao) context.getBean("serviceProviderDao");
	
	@RequestMapping("/adminLogin")
	public String userLogin(){
		System.out.println("opening admin page");
		return"adminLogin";
	}
	
	@RequestMapping("/adminDashboard")
	public String adminDashboard(Model model){
		System.out.println("opening adminDash page");
		List<ServiceProvider> serviceProvider = serviceProviderDao.viewAllServiceProvider();
		 model.addAttribute("serviceProvider",serviceProvider);
		 return"adminDashboard";
	}
	
	
	
	@RequestMapping(path="/afterAdminLogin",method =RequestMethod.POST )
	 public String checkAdminLogin(Model model, HttpServletRequest request){
		int adminId = Integer.parseInt(request.getParameter("adminId"));
		String adminName = request.getParameter("adminName");
		String adminEmail = request.getParameter("adminEmail");
		String adminPassword = request.getParameter("adminPassword");
		
			admin = adminDao.getAdmin(adminId);
//			System.out.println(admin.getAdminId()+ ", "+admin.getAdminName()+" , "+admin.getAdminEmail()+ ","+admin.getAdminPassword() );
			if(adminId == admin.getAdminId() && adminName.equals(admin.getAdminName()) && adminEmail.equals(admin.getAdminEmail()) && adminPassword.equals(admin.getAdminPassword())){
				List<ServiceProvider> serviceProvider = serviceProviderDao.viewAllServiceProvider();
				 model.addAttribute("serviceProvider",serviceProvider);
				 return"adminDashboard";
			}
			else{
				return "adminLogin";
			} 
	}	
	
	@RequestMapping(path = "/pendingServiceProviders")
	public String pendingServiceProviders(Model model){
		
		List<ServiceProvider> serviceProvider = serviceProviderDao.viewAllServiceProvider();
		 model.addAttribute("serviceProvider",serviceProvider);
		 return "pendingServiceProviders";
	}
	
	@RequestMapping(path="approved/{spContact}",method=RequestMethod.GET)
	public RedirectView approveServiceProvider(@PathVariable("spContact")String spContact, HttpServletRequest request)
	{
		serviceProvider = serviceProviderDao.approvedServiceProvider(spContact);
		serviceProvider.setSpStatus("Approve");
		serviceProviderDao.updateStatus(serviceProvider);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/approvedServiceProviders");
		return redirectView;
	}
	
	@RequestMapping("/approvedServiceProviders")
	public String approvedServiceProvider(Model m)
	{
		List<ServiceProvider> serviceProvider = serviceProviderDao.viewAllServiceProvider();
		m.addAttribute("serviceProvider",serviceProvider);
		return "approvedServiceProviders";
	}
	
	@RequestMapping(path="/disapproved/{spContact}",method=RequestMethod.GET)
	public RedirectView disapprovedServiceProvider(@PathVariable("spContact") String spContact,HttpServletRequest request)
	{
		serviceProvider=serviceProviderDao.approvedServiceProvider(spContact);
		serviceProvider.setSpStatus("Disapprove");
		serviceProviderDao.updateStatus(serviceProvider);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/approvedServiceProviders");
		return redirectView;
		
	}
	
	
	
	

}
	


