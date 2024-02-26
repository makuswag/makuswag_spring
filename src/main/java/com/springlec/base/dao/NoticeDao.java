package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.NoticeDto;
import com.springlec.base.model.QnaDto;

public interface NoticeDao {
	public List<NoticeDto> listDao(int requestPage, int numOfTuplePerPage) throws Exception;

	int getTotalCount() throws Exception;

	List<NoticeDto> searchQna(int requestPage, int numOfTuplePerPage, String keyword, String searchType) throws Exception;

	int getTotalCountBySearch(String keyword, String searchType) throws Exception;

}
