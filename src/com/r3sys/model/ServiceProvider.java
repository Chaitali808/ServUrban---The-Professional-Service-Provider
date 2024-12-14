package com.r3sys.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class ServiceProvider
{	
	@Id
	private String spContact;
	private String spName;
	private int spAge;
	private String spAddress;
	private String spPincode;
	private String spArea;
	private String spCity;
	private String spLatitude;
	private String spLongitude;
	private String spEmail;
	private String spPassword;
	private String spCategory;
	private String serviceType;
	private String openTime;
	private String closeTime;
	private String spStatus = "Pending";

	public String getSpStatus() {
		return spStatus;
	}
	public void setSpStatus(String spStatus) {
		this.spStatus = spStatus;
	}
	
	public String getSpContact() {
		return spContact;
	}
	public void setSpContact(String spContact) {
		this.spContact = spContact;
	}
	public String getSpName() {
		return spName;
	}
	public void setSpName(String spName) {
		this.spName = spName;
	}
	public int getSpAge() {
		return spAge;
	}
	public void setSpAge(int spAge) {
		this.spAge = spAge;
	}
	public String getSpAddress() {
		return spAddress;
	}
	public void setSpAddress(String spAddress) {
		this.spAddress = spAddress;
	}
	public String getSpPincode() {
		return spPincode;
	}
	public void setSpPincode(String spPincode) {
		this.spPincode = spPincode;
	}
	public String getSpArea() {
		return spArea;
	}
	public void setSpArea(String spArea) {
		this.spArea = spArea;
	}
	public String getSpCity() {
		return spCity;
	}
	public void setSpCity(String spCity) {
		this.spCity = spCity;
	}
	
	public String getSpLatitude() {
		return spLatitude;
	}
	public void setSpLatitude(String spLatitude) {
		this.spLatitude = spLatitude;
	}
	public String getSpLongitude() {
		return spLongitude;
	}
	public void setSpLongitude(String spLongitude) {
		this.spLongitude = spLongitude;
	}
	public String getSpEmail() {
		return spEmail;
	}
	public void setSpEmail(String spEmail) {
		this.spEmail = spEmail;
	}
	public String getSpPassword() {
		return spPassword;
	}
	public void setSpPassword(String spPassword) {
		this.spPassword = spPassword;
	}
	public String getSpCategory() {
		return spCategory;
	}
	public void setSpCategory(String spCategory) {
		this.spCategory = spCategory;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getOpenTime() {
		return openTime;
	}
	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}
	public String getCloseTime() {
		return closeTime;
	}
	public void setCloseTime(String closeTime) {
		this.closeTime = closeTime;
	}
	public ServiceProvider(String spContact, String spName, int spAge, String spAddress, String spPincode,
			String spArea, String spCity, String spLatitude, String spLongitude, String spEmail, String spPassword,
			String spCategory, String serviceType, String openTime, String closeTime) {
		super();
		this.spContact = spContact;
		this.spName = spName;
		this.spAge = spAge;
		this.spAddress = spAddress;
		this.spPincode = spPincode;
		this.spArea = spArea;
		this.spCity = spCity;
		this.spLatitude = spLatitude;
		this.spLongitude = spLongitude;
		this.spEmail = spEmail;
		this.spPassword = spPassword;
		this.spCategory = spCategory;
		this.serviceType = serviceType;
		this.openTime = openTime;
		this.closeTime = closeTime;
	}
	public ServiceProvider() {
		super();
	}
	
}
