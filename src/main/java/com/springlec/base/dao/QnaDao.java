package com.springlec.base.dao;

import java.util.List;


import com.springlec.base.model.QnaDto;

public interface QnaDao {
	List<QnaDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;

    int getTotalCount() throws Exception;

    List<QnaDto> searchQna(int requestPage, int numOfTuplePerPage, String keyword, String searchType) throws Exception;

    public List<QnaDto> listQuery(String query, String content) throws Exception;
	
}
