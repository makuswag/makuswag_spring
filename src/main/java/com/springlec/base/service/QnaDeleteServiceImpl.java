package com.springlec.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.QnaDeleteDao;

@Service
public class QnaDeleteServiceImpl implements QnaDeleteService{
	
	@Autowired
	QnaDeleteDao dao;
	
	
	@Override
	public void DeleteDao(int qnaSeq, String userId) throws Exception {
		// TODO Auto-generated method stub
		dao.DeleteDao(qnaSeq, userId);
	}
	
}
