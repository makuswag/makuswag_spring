package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.NoticeDao;
import com.springlec.base.model.NoticeDto;


@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeDao dao;
	
	
	
	
	@Override
	public List<NoticeDto> listDao() throws Exception {
		
		
		
		return dao.listDao();
		
		
		
	}
	
	
	
	
	
	
}
