package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.NoticeDao;
import com.springlec.base.model.NoticeDto;
import com.springlec.base.model.QnaDto;


@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeDao dao;
	

	@Override
	public List<NoticeDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
		// TODO Auto-generated method stub
		int startIdx = (requestPage - 1) * numOfTuplePerPage; // 시작 인덱스 계산
		return dao.listDao(startIdx, numOfTuplePerPage);
	}




	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}




	
	
	
	
	
	
}
