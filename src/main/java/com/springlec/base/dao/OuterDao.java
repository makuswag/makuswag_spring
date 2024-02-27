package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.OuterDto;

public interface OuterDao {
	List<OuterDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
