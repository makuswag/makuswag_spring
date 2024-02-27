package com.springlec.base.service;

import java.util.HashMap;
import java.util.Properties;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springlec.base.dao.UserDao;
import com.springlec.base.model.UserDto;

import jakarta.servlet.http.HttpServletRequest;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserDaoService {

	@Autowired
	UserDao dao;
	
	@Autowired
	HashMap<String, Object> data;

	@Override
	public UserDto whologin(String userId, String userPasswd) throws Exception {
		return dao.whologin(userId, userPasswd);
	}

	@Override
	public UserDto findId(String name, String email) throws Exception {
		// TODO Auto-generated method stub
		return dao.findId(name, email);
	}

	@Override
	public UserDto findPw(String userId, String name, String email) throws Exception {
		// TODO Auto-generated method stub
		return dao.findPw(userId, name, email);
	}
}
