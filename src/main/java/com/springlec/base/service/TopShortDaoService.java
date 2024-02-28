package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.TopShortDto;

public interface TopShortDaoService {
	List<TopShortDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
