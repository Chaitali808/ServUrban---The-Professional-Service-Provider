package com.r3sys.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.r3sys.dao.OrdersDao;
import com.r3sys.dao.ServiceProviderDao;
import com.r3sys.model.Orders;
import com.r3sys.model.ServiceProvider;

@Controller
public class ServicesController 
{
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	ServiceProvider serviceProvider = (ServiceProvider) context.getBean("serviceProvider");
	ServiceProviderDao serviceProviderDao = (ServiceProviderDao) context.getBean("serviceProviderDao");
	Orders orders = (Orders) context.getBean("orders");
	OrdersDao ordersDao = (OrdersDao) context.getBean("ordersDao");
	@RequestMapping("spLogin")
	public String spLogin(){
		System.out.println("opening service providerLogin page");
		return"spLogin";
	}

	@RequestMapping("spSignup")
	public String spSignup(){
		return "spSignup";
	}
	
	@RequestMapping("spDashboard")
	public String spDashboard(){
		return "spDashboard";
	}
	
	@RequestMapping("map")
	public String map(){
		return "map";
	}
	
	@RequestMapping(path = "/afterMapping", method =RequestMethod.POST)
	public String afterMapping(Model model ,HttpServletRequest request )
	{	
		String spLatitude = request.getParameter("lat");
		String spLongitude = request.getParameter("lng");
		
		model.addAttribute("spLatitude",spLatitude );
		model.addAttribute("spLongitude",spLongitude );
		
		System.out.println("spLatitude = "+spLatitude);
		System.out.println("spLongitude = "+spLongitude);

		return "spSignup";
	}
	
//	@RequestMapping(path="/afterSpSignup",method =RequestMethod.POST)
//	public String checkSpSignup(Model model ,HttpServletRequest request ) throws ParseException{
//		String spLatitude = request.getParameter("spLatitude");
//		String spLongitude = request.getParameter("spLongitude");
//		
//		String spContact = request.getParameter("spContact"); 
//		String spName = request.getParameter("spName"); 
//		int spAge = Integer.parseInt(request.getParameter("spAge"));
////		Date uDob = (Date) new SimpleDateFormat("dd/MM/yyyy").parse("uDob");
////		System.out.println("date = "+uDob);
//		String spAddress = request.getParameter("spAddress");
//		String spPincode = request.getParameter("spPincode");
//		String spArea = request.getParameter("spArea"); 
//		String spCity = request.getParameter("spCity"); 
//		String spEmail = request.getParameter("spEmail");
//		String spPassword = request.getParameter("spPassword");
//		String spCategory = request.getParameter("spCategory");
//		String serviceType = request.getParameter("serviceType");
//		String openTime = request.getParameter("openTime");
//		String closeTime = request.getParameter("closeTime");
//
//		System.out.println(spAddress);
//		System.out.println(spLatitude);
//		System.out.println(spLongitude);
//
//		serviceProvider.setSpContact(spContact);
//		serviceProvider.setSpName(spName);
//		serviceProvider.setSpAge(spAge);
//		serviceProvider.setSpAddress(spAddress);
//		serviceProvider.setSpPincode(spPincode);
//		serviceProvider.setSpEmail(spEmail);
//		serviceProvider.setSpPassword(spPassword);
//		serviceProvider.setSpArea(spArea);
//		serviceProvider.setSpCity(spCity);
//		serviceProvider.setSpCategory(spCategory);
//		serviceProvider.setServiceType(serviceType);
//		serviceProvider.setOpenTime(openTime);
//		serviceProvider.setCloseTime(closeTime);
//		serviceProvider.setSpLatitude(spLatitude);
//		serviceProvider.setSpLongitude(spLongitude);
//		
//		model.addAttribute("spLatitude",spLatitude );
//		model.addAttribute("spLongitude",spLongitude );
//
//		String i = serviceProviderDao.insertNewServiceProvider(serviceProvider);
//		
//		if(i != null){
//			return "spDashboard";
//		}
//		else{
//			return "spLogin";
//		}
//	}
	
//	orrrrr-->
	
	@RequestMapping(path="/afterSpSignup",method =RequestMethod.POST)
	public String checkSpSignup(@ModelAttribute ServiceProvider  serviceProvider)
	{
		serviceProviderDao.insertNewServiceProvider(serviceProvider);
		return "spDashboard";
		
	}
	
	@RequestMapping(path="/afterSpLogin",method = RequestMethod.POST )
	 public String checkLogin(Model model, HttpServletRequest request){
		String spContact = request.getParameter("spContact");
		String spPassword = request.getParameter("spPassword");
		System.out.println(spContact);
		System.out.println(spPassword);

		try {
			serviceProvider = serviceProviderDao.getServiceProvider(spContact);
			String contact =serviceProvider.getSpContact();
			String password = serviceProvider.getSpPassword();
			System.out.println(contact);
			System.out.println(password);

			if(contact.equals(spContact) && password.equals(spPassword) ){
				return "spDashboard";
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "spLogin";
	}	
	
//	@RequestMapping("spPendingOrders")
//	public String spPendingOrders(){
//		return "spPendingOrders";
//	}
//	
//	@RequestMapping("spApprovedOrders")
//	public String spApprovedOrders(){
//		return "spApprovedOrders";
//	}
//	
//	@RequestMapping("spDisapprovedOrders")
//	public String spDisapprovedOrders(){
//		return "spDisapprovedOrders";
//	}

	@RequestMapping("spTodaysOrders")
	public String spTodaysOrders(Model model){
		List<Orders> order = ordersDao.getAllOrders();
		 model.addAttribute("order",order);
		return "spTodaysOrders";
	}
	
	@RequestMapping("spNext7Days")
	public String spNext7Days(Model model){
		List<Orders> order = ordersDao.getAllOrders();
		 model.addAttribute("order",order);
		return "spNext7Days";
	}
	
	@RequestMapping("spPendingOrders")
	public String spPendingOrders(Model model){
		
		List<Orders> orders = ordersDao.getAllOrders();
		for(Orders o : orders){
			System.out.println(o.getOrdeDdate());
			System.out.println(o.getSpName());
			System.out.println(o.getuContact());
			System.out.println(o.getuId());

		}
		System.out.println("calling mapping sp pending");
		 model.addAttribute("orders",orders);
		 return "spPendingOrders";
	}
	@RequestMapping(path="spApproved/{uId}",method=RequestMethod.GET)
	public RedirectView approvedOrdersFromSp(@PathVariable("uId") int uId,HttpServletRequest request)

	{
		orders=ordersDao.approvedOrders(uId);
		orders.setOrderStatus("Approved");
		ordersDao.updateStatusOfOrders(orders);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/spApprovedOrders");
		return redirectView;
	}
	
	@RequestMapping("/spApprovedOrders")
	public String approvedServiceProvider(Model m)
	{
		List<Orders> orders = ordersDao.getAllOrders();
		m.addAttribute("orders",orders);
		return "spApprovedOrders";
	}
	
	@RequestMapping(path="/spDisapproved/{uId}",method=RequestMethod.GET)
	public RedirectView dispprovedOrdersFromSp(@PathVariable("uId") int uId,HttpServletRequest request)
	{
		orders=ordersDao.approvedOrders(uId);
		orders.setOrderStatus("Disapproved");
		ordersDao.updateStatusOfOrders(orders);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/spApprovedOrders");
		return redirectView;
		
	}
	
//	@RequestMapping("/spDisapproved")
//	public String DisapprovedServiceProvider(Model m)
//	{
//		List<Orders> orders = ordersDao.getAllOrders();
//		m.addAttribute("orders",orders);
//		return "spDisapprovedOrders";
//	}
	
	
	
	
	
}
