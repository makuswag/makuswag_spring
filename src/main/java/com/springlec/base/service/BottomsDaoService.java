package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.BottomsDto;

public interface BottomsDaoService {
	List<BottomsDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	
	int getTotalCount() throws Exception;
}
