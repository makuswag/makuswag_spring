package com.springlec.base.service;

import java.util.HashMap;

import com.springlec.base.model.UserDto;

import jakarta.servlet.http.HttpServletRequest;

public interface UserDaoService {

	public UserDto whologin(String userId, String userPasswd) throws Exception;
	public HashMap<String, Object> authentication(String email, HttpServletRequest request) throws Exception;
	public HashMap<String,Object> checkDuplicatedEmail(String email, HttpServletRequest request) throws Exception;
}
