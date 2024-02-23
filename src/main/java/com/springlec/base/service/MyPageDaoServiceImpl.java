package com.springlec.base.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.MyPageDao;
import com.springlec.base.model.MyPageDto;
@Service
public class MyPageDaoServiceImpl implements MyPageDaoService {

	
	@Autowired
	MyPageDao dao;
	@Override
	public  List<MyPageDto> myPageDao() throws Exception{
		
		
		
		return dao.myPageDao();
	}
		
	

}
