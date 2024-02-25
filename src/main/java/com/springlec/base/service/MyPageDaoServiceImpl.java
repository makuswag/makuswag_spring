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
	public  List<MyPageDto> myPageDao(String startDate, String endDate) throws Exception{
		System.out.println("임플란티드키드");
		System.out.println(dao.myPageDao(startDate, endDate));
		return dao.myPageDao(startDate, endDate);
	}
		
	

}
