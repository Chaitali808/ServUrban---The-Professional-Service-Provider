package com.r3sys.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.ServiceProvider;
import com.r3sys.model.User;


@Component
public class UserDao 
{
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public UserDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public UserDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Transactional
	public String insertNewUser(User user) {
		String i = (String)hibernateTemplate.save(user);
		System.out.println("user registered successfully!!");
		return "i";
	}
	
	public User getUser(String uContact){
		User user = hibernateTemplate.get(User.class, uContact);
		return user;
	}
	
	public List<User> getAllUsers() {
		List<User> userList = (List<User>) hibernateTemplate.loadAll(User.class);
		return userList;
	}
	
	
	
	
	
}
