package com.springlec.base.dao;

import java.util.HashMap;

import com.springlec.base.model.UserDto;

import jakarta.servlet.http.HttpServletRequest;

public interface UserDao {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
	public HashMap<String, Object> authentication(String email, HttpServletRequest request) throws Exception;
	public HashMap<String,Object> checkDuplicatedEmail(String email, HttpServletRequest request) throws Exception;
}
