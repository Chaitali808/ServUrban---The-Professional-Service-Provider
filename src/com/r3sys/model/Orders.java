package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
@Component
public class Orders {

	@Id
	@GeneratedValue(strategy =GenerationType.AUTO)
	public int uId;
	public String uName;
	public String uContact;
	public String uEmail;
	public String spName;
	public String spContact;
	public String OrdeDdate;
	public String OrderTime;
	public String serviceTitle;
	//public String serviceDescription;
	public String OrderStatus="Pending";
	public int getuId() 
	{
		return uId;
	}
	public void setuId(int uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuContact() {
		return uContact;
	}
	public void setuContact(String uContact) {
		this.uContact = uContact;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getSpName() {
		return spName;
	}
	public void setSpName(String spName) {
		this.spName = spName;
	}
	public String getSpContact() {
		return spContact;
	}
	public void setSpContact(String spContact) {
		this.spContact = spContact;
	}
	public String getOrdeDdate() {
		return OrdeDdate;
	}
	public void setOrdeDdate(String ordeDdate) {
		OrdeDdate = ordeDdate;
	}
	public String getOrderTime() {
		return OrderTime;
	}
	public void setOrderTime(String orderTime) {
		OrderTime = orderTime;
	}
	public String getServiceTitle() {
		return serviceTitle;
	}
	public void setServiceTitle(String serviceTitle) {
		this.serviceTitle = serviceTitle;
	}
//	public String getServiceDescription() {
//		return serviceDescription;
//	}
//	public void setServiceDescription(String serviceDescription) {
//		this.serviceDescription = serviceDescription;
//	}
	public String getOrderStatus() {
		return OrderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		OrderStatus = orderStatus;
	}
	public Orders(int uId, String uName, String uContact, String uEmail, String spName, String spContact,
			String ordeDdate, String orderTime, String serviceTitle, String serviceDescription, String orderStatus) {
		super();
		this.uId = uId;
		this.uName = uName;
		this.uContact = uContact;
		this.uEmail = uEmail;
		this.spName = spName;
		this.spContact = spContact;
		OrdeDdate = ordeDdate;
		OrderTime = orderTime;
		this.serviceTitle = serviceTitle;
		//this.serviceDescription = serviceDescription;
		OrderStatus = orderStatus;
	}
	public Orders() {
		super();
	}
	
	
	
}
