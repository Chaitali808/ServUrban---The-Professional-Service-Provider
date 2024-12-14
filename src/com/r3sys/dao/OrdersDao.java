package com.r3sys.dao;

import java.util.List;

import javax.persistence.criteria.Order;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.r3sys.model.Orders;
import com.r3sys.model.ServiceProvider;


@Component
public class OrdersDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public Integer insertNewOrder(Orders orders) {
		Integer i = (Integer)hibernateTemplate.save(orders);
		System.out.println("order successfully!!");
		return i;
	}
	
	public List<Orders> getAllOrders() {
		List<Orders> orders = hibernateTemplate.loadAll(Orders.class);
		System.out.println("order successfully!!");
		return orders;
	}
	
	public Orders getOneOrder (int uId){
		Orders orders = (Orders) hibernateTemplate.get(Order.class, uId);
		return orders;
	}
	
	@Transactional
	public Orders updateStatusOfOrders(Orders orders) {
		hibernateTemplate.update(orders);
		System.out.println("Updated successfully..!!");
		return orders;
	}
	
	public Orders approvedOrders(int uId) {
		Orders i = hibernateTemplate.get(Orders.class, uId);
		return i;
	}
	

}	

