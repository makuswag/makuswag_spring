package com.springlec.base.model;

import java.sql.Timestamp;

public class UserDto {

	String userId;
	String userPw;
	String name;
	String address;
	String phone;
	String email;
	String gender;
	String birthday;
	int point;
	String howToLogin;
	Timestamp active;
	Timestamp deactive;
	
	public UserDto() {
		// TODO Auto-generated constructor stub
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getHowToLogin() {
		return howToLogin;
	}

	public void setHowToLogin(String howToLogin) {
		this.howToLogin = howToLogin;
	}

	public Timestamp getActive() {
		return active;
	}

	public void setActive(Timestamp active) {
		this.active = active;
	}

	public Timestamp getDeactive() {
		return deactive;
	}

	public void setDeactive(Timestamp deactive) {
		this.deactive = deactive;
	}
	
}
