package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.TopLongDto;

public interface TopLongDao {
	List<TopLongDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
