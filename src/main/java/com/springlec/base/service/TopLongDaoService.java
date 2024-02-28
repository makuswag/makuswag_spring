package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.TopLongDto;

public interface TopLongDaoService {
	List<TopLongDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
