package com.springlec.base.dao;



import com.springlec.base.model.ReviewWriteDto;

public interface ReviewWriteDao {
    public ReviewWriteDto getReviewWriteDao(String proName) throws Exception;
    public void reviewWriteDao(int proSeq,String userId,String revTitle, String revContent) throws Exception;	
	

}
