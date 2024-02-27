package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.OuterDto;

public interface OuterDaoService {
	List<OuterDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
