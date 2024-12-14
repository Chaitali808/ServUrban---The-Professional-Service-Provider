package com.r3sys.controller;

import java.text.ParseException;
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
import com.r3sys.dao.UserDao;
import com.r3sys.model.Orders;
import com.r3sys.model.ServiceProvider;
import com.r3sys.model.User;


@Controller
public class HomeController
{	
	
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user = (User) context.getBean("user");
	UserDao userDao =(UserDao) context.getBean("userDao");
	ServiceProvider serviceProvider = (ServiceProvider) context.getBean("serviceProvider");
	ServiceProviderDao serviceProviderDao = (ServiceProviderDao) context.getBean("serviceProviderDao");
//	ServiceProvider ServiceProvider = (ServiceProvider)context.getBean("serviceProvider");
	Orders orders = (Orders) context.getBean("orders");
	OrdersDao ordersDao = (OrdersDao) context.getBean("ordersDao");
	
	
	@RequestMapping("/")
	public String userLogin(){
		System.out.println("opening userLogin page");
		return"index";
	}

	@RequestMapping("index")
	public String index(){
		System.out.println("opening userLogin page");
		return"index";
	}
	
	
	@RequestMapping("userSignup")
	public String userRegister(){
		return "userSignup";
	}
	
	@RequestMapping("userDashboard")
	public String userDashboard(){
		return "userDashboard";
	}

	@RequestMapping("uHouseholdServices")
	public String uHouseholdServices(){
		return "uHouseholdServices";
	}
	@RequestMapping("uCateringServices")
	public String uCateringServices(){
		return "uCateringServices";
	}
	@RequestMapping("uProfessionalServices")
	public String uProfessionalServices(){
		return "uProfessionalServices";
	}
	
	
	@RequestMapping("/viewAllCategories")
	public String viewAllCategories(){
		return "viewAllCategories";
	}
	
	@RequestMapping(path="/afterUserSignup",method =RequestMethod.POST)
	public String checkUserSignup(Model model ,HttpServletRequest request ) throws ParseException{
		String uContact = request.getParameter("uContact"); 
		String uName = request.getParameter("uName"); 
		String uDob = request.getParameter("uDob");
//		Date uDob = (Date) new SimpleDateFormat("dd/MM/yyyy").parse("uDob");
//		System.out.println("date = "+uDob);
		String uAddress = request.getParameter("uAddress");
		String uPincode = request.getParameter("uPincode");
		String uEmail = request.getParameter("uEmail");
		String uArea = request.getParameter("uArea"); 
		String uCity = request.getParameter("uCity"); 
		String uPassword = request.getParameter("uPassword");
											System.out.println(uAddress);
		user.setuContact(uContact);
		user.setuName(uName);
		user.setuDob(uDob);
		user.setuAddress(uAddress);
		user.setuPincode(uPincode);
		user.setuEmail(uEmail);
		user.setuPassword(uPassword);
		user.setuArea(uArea);
		user.setuCity(uCity);
		String i = userDao.insertNewUser(user);
		if(i != null){
			return "userDashboard";
		}
		else{
			return "userSignup";
		}
	}

	@RequestMapping(path="/afterLogin",method =RequestMethod.POST )
	 public String checkLogin(Model model, HttpServletRequest request){
		String uContact = request.getParameter("uContact");
		String uPassword = request.getParameter("uPassword");
		System.out.println(uContact);
		System.out.println(uPassword);

		try {
			user = userDao.getUser(uContact);
			String contact =user.getuContact();
			String password = user.getuPassword();
			System.out.println(contact);
			System.out.println(password);

			if(contact.equals(uContact) && password.equals(uPassword) ){
				return "userDashboard";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
	
	@RequestMapping(path= "/painterView",method =RequestMethod.GET)
	public String afterViewDetailsforPainter(Model model){
		List<ServiceProvider> serviceProvider= serviceProviderDao.viewAllServiceProvider();
		model.addAttribute("serviceProvider",serviceProvider);
		return "painterView";
	}
	
	
	@RequestMapping(path="/bookOrder/{spContact}", method=RequestMethod.GET)
	public String BookOrder(@PathVariable("spContact") String spContact, Model model, HttpServletRequest request)
	{
	    ServiceProvider serviceProvider = serviceProviderDao.getServiceProvider(spContact);
	    model.addAttribute("user", user);
	    model.addAttribute("serviceProvider", serviceProvider);
	    return "bookOrder";
	}	
	
//	@RequestMapping(path="/bookOrder/{spContact}",method=RequestMethod.GET)
//    public String BookOrder(@PathVariable("spContact") String spContact, Model model, HttpServletRequest request)
//    {
//        ServiceProvider serviceProvider = serviceProviderDao.getServiceProvider(spContact);
//    	model.addAttribute("user", user);
//    	model.addAttribute("serviceProvider", serviceProvider);
//    	return "bookOrder";
//    	
//    }
    
    
    @RequestMapping(path="/bookOrder/afterBookOrder",method=RequestMethod.GET)
	public String addOrder( Model model ,HttpServletRequest request)
	{	
    	int uId = Integer.parseInt(request.getParameter("uId"));
		String uName=request.getParameter("uName");
		String uContact=request.getParameter("uContact");
		String uEmail=request.getParameter("uEmail");
		String spName=request.getParameter("spName");
		String spContact=request.getParameter("spContact");
		String serviceTitle=request.getParameter("serviceTitle");
		String OrderDdate=request.getParameter("OrderDdate");
		String OrderTime=request.getParameter("OrderTime");
		String OrderStatus=request.getParameter("OrderStatus");
		
		System.out.println("UserName ="+uName);
		System.out.println("user contact = "+uContact);
		System.out.println("user email ="+uEmail +"  "+spContact  +"  "+spName);
		
		
		orders.setuName(uName);
		orders.setuId(uId);
		orders.setuContact(uContact);
		orders.setuEmail(uEmail);
		orders.setSpName(spName);
		orders.setSpContact(spContact);
		orders.setServiceTitle(serviceTitle);
		orders.setOrdeDdate(OrderDdate);
		orders.setOrderTime(OrderTime);
		orders.setOrderStatus(OrderStatus);
		System.out.println(orders.toString());
		ordersDao.insertNewOrder(orders);
		//model.addAttribute("orders", orders);
		return "success";
	}

    @RequestMapping("/afterBookOrder")
    public String viewAllOrders(Model m)
    {
    	List<Orders> orders = ordersDao.getAllOrders();
		m.addAttribute("ordersList", orders);
		return "success";
    }
 
    @RequestMapping("uPendingOrders")
    public String uPendingOrder(Model m){
  	List<Orders> orders =  ordersDao.getAllOrders();
  	m.addAttribute("orders", orders);
  	return "uPendingOrders";
  }
    @RequestMapping("uApprovedOrders")
	public String uApprovedOrders(Model m){
    	List<Orders> orders =  ordersDao.getAllOrders();
      	m.addAttribute("orders", orders);
		return "uApprovedOrders";
	}
	
	@RequestMapping("uDisapprovedOrders")
	public String uDisapprovedOrders(Model m){
		List<Orders> orders =  ordersDao.getAllOrders();
	  	m.addAttribute("orders", orders);
		return "uDisapprovedOrders";
	}
    
    
    
}





