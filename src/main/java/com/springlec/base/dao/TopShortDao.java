package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.TopShortDto;

public interface TopShortDao {
	List<TopShortDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;

}
