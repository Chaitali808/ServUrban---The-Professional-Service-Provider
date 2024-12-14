package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
@Component
public class User 
{	
	@Id
	private String uContact;
	private String uName;
	private String uDob;
	private String uAddress;
	private String uPincode;
	private String uArea;
	private String uCity;
	private String uEmail;
	private String uPassword;
	
	public String getuContact() {
		return uContact;
	}
	public void setuContact(String uContact) {
		this.uContact = uContact;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuDob() {
		return uDob;
	}
	public void setuDob(String uDob) {
		this.uDob = uDob;
	}
	public String getuAddress() {
		return uAddress;
	}
	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}
	public String getuPincode() {
		return uPincode;
	}
	public void setuPincode(String uPincode) {
		this.uPincode = uPincode;
	}
	public String getuArea() {
		return uArea;
	}
	public void setuArea(String uArea) {
		this.uArea = uArea;
	}
	public String getuCity() {
		return uCity;
	}
	public void setuCity(String uCity) {
		this.uCity = uCity;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuPassword() {
		return uPassword;
	}
	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
	public User(String uContact, String uName, String uDob, String uAddress, String uPincode, String uArea,
			String uCity, String uEmail, String uPassword) {
		super();
		this.uContact = uContact;
		this.uName = uName;
		this.uDob = uDob;
		this.uAddress = uAddress;
		this.uPincode = uPincode;
		this.uArea = uArea;
		this.uCity = uCity;
		this.uEmail = uEmail;
		this.uPassword = uPassword;
	}
	public User() {
		super();
	}
	
	
}
