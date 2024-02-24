package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.FaqDao;
import com.springlec.base.model.FaqDto;


@Service
public class FaqDaoServiceImpl implements FaqDaoService {
	
	@Autowired
	FaqDao dao;
	
	
	@Override
	public List<FaqDto> listDao() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("임플란티드키드");
//		System.out.println(listDao());
		return dao.listDao();
	}

}
