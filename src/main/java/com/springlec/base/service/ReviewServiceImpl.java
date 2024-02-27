package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.ReviewDao;
import com.springlec.base.model.ReviewDto;

@Service 

public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDao dao;
	
	
	@Override
	public List<ReviewDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
		// TODO Auto-generated method stub
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
		return dao.listDao(requestPage, numOfTuplePerPage);
	}

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}
	
}
