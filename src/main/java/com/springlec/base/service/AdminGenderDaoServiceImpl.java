package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.AdminDao;
import com.springlec.base.model.AdminDto;

@Service
public class AdminGenderDaoServiceImpl implements AdminGenderDaoService {

	
	@Autowired
	AdminDao dao;
	
	@Override
	public List<AdminDto> AdminGender() throws Exception{
		// TODO Auto-generated method stub
		return dao.AdminGender();
	}

	@Override
	public List<AdminDto> managerDay() throws Exception {
		// TODO Auto-generated method stub
		return dao.managerDay();
	}

	@Override
	public List<AdminDto> managerMonth() throws Exception {
		// TODO Auto-generated method stub
		return dao.managerMonth();
	}

	@Override
	public List<AdminDto> managerYear() throws Exception {
		// TODO Auto-generated method stub
		return dao.managerYear();
	}

	@Override
	public List<AdminDto> listDao() throws Exception {
		// TODO Auto-generated method stub
		return dao.listDao();
	}

	@Override
	public List<AdminDto> listQuery(String query, String content) throws Exception {
		// TODO Auto-generated method stub
		content='%'+content+'%';
		return dao.listQuery(query, content);
	}


}
