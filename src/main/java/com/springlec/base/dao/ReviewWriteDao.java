package com.springlec.base.dao;


import java.util.List;

import com.springlec.base.model.ReviewWriteDto;

public interface ReviewWriteDao {
    public ReviewWriteDto getReviewWriteDao(String proName) throws Exception;
//	public  List<MyPageDto> myPageDao(String startDate, String endDate, String getUserId) throws Exception;
//	public  MyPageDto reviewWriteDao(String proName, String proImage1) throws Exception;
	

}
