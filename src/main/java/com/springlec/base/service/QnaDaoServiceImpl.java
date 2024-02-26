package com.springlec.base.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.springlec.base.dao.QnaDao;
import com.springlec.base.model.QnaDto;

@Service
public class QnaDaoServiceImpl implements QnaDaoService{

	
	@Autowired
	QnaDao dao;
	
	@Override
    public List<QnaDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception {
        return dao.listDao(requestPage, numOfTuplePerPage);
    }

	@Override
	public int getTotalCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.getTotalCount();
	}
	
}
