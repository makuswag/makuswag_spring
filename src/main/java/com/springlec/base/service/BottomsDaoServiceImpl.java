package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.BottomsDao;
import com.springlec.base.model.BottomsDto;
@Service
public class BottomsDaoServiceImpl implements BottomsDaoService {
	
	@Autowired
	BottomsDao dao;
	
	@Override
	public List<BottomsDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
		return dao.listDao(startIdx, numOfTuplePerPage);
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}

}
