package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.OuterDao;
import com.springlec.base.model.OuterDto;

@Service
public class OuterDaoServiceImpl implements OuterDaoService {
	
	@Autowired
	OuterDao dao;
	
	
	@Override
	public List<OuterDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
		System.out.println("간다간다 뿅간다");
		return dao.listDao(startIdx, numOfTuplePerPage);
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}
	
}
