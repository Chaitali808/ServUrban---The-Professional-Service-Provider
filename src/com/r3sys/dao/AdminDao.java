package com.r3sys.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.Admin;

@Component
public class AdminDao
{
	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	//In our case the primary key we can say it is admin id hence we can get all info by admin id.
	public Admin getAdmin(int adminId){
		Admin admin = hibernateTemplate.get(Admin.class, adminId);
		return admin;
	}
	
	

	
}
