package com.springlec.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.QnaContentDao;
import com.springlec.base.model.QnaContentDto;

@Service
public class QnaContentServiceImpl implements QnaContentService{
	
	@Autowired
	QnaContentDao dao;
	
	
	@Override
	public QnaContentDto contentDao(int qnaSeq) throws Exception {
		System.out.println("******************"+qnaSeq+"**************");
		// TODO Auto-generated method stub
		return dao.contentDao(qnaSeq);
	}
	
	
	
}
