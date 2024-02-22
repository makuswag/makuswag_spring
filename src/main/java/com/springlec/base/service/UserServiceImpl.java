package com.springlec.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springlec.base.dao.UserDao;
import com.springlec.base.model.UserDto;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserDaoService {

	@Autowired
	UserDao dao;

	@Override
	public UserDto whologin(String userId, String userPasswd) throws Exception {
		return dao.whologin(userId, userPasswd);
	}
}
