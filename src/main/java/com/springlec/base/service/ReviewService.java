package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.ReviewDto;

public interface ReviewService {
	public List<ReviewDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;
	int getTotalCount() throws Exception;
}
