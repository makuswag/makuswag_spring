package com.springlec.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.QnaWriteDao;

@Service
public class QnaWriteServiceImpl implements QnaWriteService{
	
	
	@Autowired
	QnaWriteDao dao;
	
	
	
	
	@Override
	public void writeDao(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String qnaDate)
			throws Exception {
		
		dao.writeDao(qnaTitle, qnaCategory, qnaContent, qnaImage, qnaDate);
		
		
		
		
	}
	
	
	
}
