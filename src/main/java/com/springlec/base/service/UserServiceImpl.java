package com.springlec.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springlec.base.dao.UserDao;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserDaoService {

	@Autowired
	UserDao dao;
}
