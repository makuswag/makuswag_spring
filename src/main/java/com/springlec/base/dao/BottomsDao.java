package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.BottomsDto;

public interface BottomsDao {
	List<BottomsDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
