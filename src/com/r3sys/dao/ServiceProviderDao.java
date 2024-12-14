package com.r3sys.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import com.r3sys.model.ServiceProvider;

@Component
public class ServiceProviderDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public String insertNewServiceProvider(ServiceProvider serviceProvider) {
		String i = (String)hibernateTemplate.save(serviceProvider);
		System.out.println("user registered successfully!!");
		return "i";
	}
	
	public ServiceProvider getServiceProvider(String spContact){
		ServiceProvider serviceProvider = hibernateTemplate.get(ServiceProvider.class, spContact);
		return serviceProvider;
	}
	
	public List<ServiceProvider> viewAllServiceProvider(){
		List<ServiceProvider> serviceProvider= (List<ServiceProvider>) hibernateTemplate.loadAll(ServiceProvider.class);
		return serviceProvider;
	}
	
	@Transactional
	public ServiceProvider updateStatus(ServiceProvider serviceProvider) {
		hibernateTemplate.update(serviceProvider);
		System.out.println("Updated successfully..!!");
		return serviceProvider;
	}
	
	public ServiceProvider approvedServiceProvider(String spContact) {
		ServiceProvider i = hibernateTemplate.get(ServiceProvider.class, spContact);
		return i;
	}
	
	
	
	
	
}
