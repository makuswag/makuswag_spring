package com.springlec.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springlec.base.model.ReviewDto;

public interface ReviewDao {
	public List<ReviewDto> listDao(@Param("requestPage") int requestPage, @Param("numOfTuplePerPage") int numOfTuplePerPage) throws Exception;
	int getTotalCount() throws Exception;
	
	
}
