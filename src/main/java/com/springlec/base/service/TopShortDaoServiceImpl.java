package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.model.TopShortDto;
import com.springlec.base.dao.TopShortDao;
import com.springlec.base.model.OuterDto;

@Service
public class TopShortDaoServiceImpl implements TopShortDaoService{

	
	@Autowired
	TopShortDao dao;
	
	@Override
	public List<TopShortDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
		return dao.listDao(startIdx, numOfTuplePerPage);
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}
	
}
