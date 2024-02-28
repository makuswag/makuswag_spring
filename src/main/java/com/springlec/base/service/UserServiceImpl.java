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

	@Override
	public void changePasswd(String userPasswd, String userId) throws Exception {
		// TODO Auto-generated method stub
		dao.changePasswd(userPasswd, userId);
	}

	@Override
	public HashMap<String, Object> checkDuplicatedId(String userId) throws Exception {
		// 아이디가 중복되었다면 1, 아니면 0
		if(dao.checkDuplicatedId(userId) == 1) { 
			data.put("result", "false");
		}
		else {
			data.put("result", "true");
		}
		return data;
	}

	@Override
	public HashMap<String, Object> checkDuplicatedEmail(String email, HttpServletRequest request) throws Exception {
		// 아이디가 중복되었다면 1, 아니면 0
		if(dao.checkDuplicatedEmail(email) != 0) {
			data.put("result", "false");
			return data;
		}
		else {
			data.put("result", "true");
		}
		return data;
	}

}
