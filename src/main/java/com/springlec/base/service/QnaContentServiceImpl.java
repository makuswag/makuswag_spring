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
	public QnaContentDto contentDao(int qnaSeq, String qnaTitle, String qnaContent, String qnaImage, String qnaDate)
			throws Exception {
		// TODO Auto-generated method stub
		return dao.contentDao(qnaSeq, qnaTitle, qnaContent, qnaImage, qnaDate);
	}
	
	
	
}
