package com.springlec.base.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springlec.base.dao.MyPageDao;
import com.springlec.base.dao.ReviewWriteDao;
import com.springlec.base.model.MyPageDto;
import com.springlec.base.model.ReviewWriteDto;
@Service
public class ReviewWriteDaoServiceImpl implements ReviewWriteDaoService {

	
	@Autowired
	ReviewWriteDao dao;

	 @Override
	    public ReviewWriteDto getReviewWriteDao(String proName) throws Exception {
	        return dao.getReviewWriteDao(proName);
	    }


	@Override
	public void reviewWriteDao(int proSeq, String userId, String revTitle, String revContent) throws Exception {
		// TODO Auto-generated method stub
	
		
		dao.reviewWriteDao(proSeq, userId, revTitle, revContent);

	}




//	@Override
//	public ReviewWriteDto getReviewWriteDao(String proName ) throws Exception {
//		return dao.getReviewWriteDao(proName);	
//	}
	
		
	

}
