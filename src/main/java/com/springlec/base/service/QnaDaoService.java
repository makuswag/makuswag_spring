package com.springlec.base.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springlec.base.model.QnaDto;

public interface QnaDaoService {
	public List<QnaDto> listDao(@Param("requestPage") int requestPage, @Param("numOfTuplePerPage") int numOfTuplePerPage) throws Exception;
	
	public int getTotalCount() throws Exception;
}
