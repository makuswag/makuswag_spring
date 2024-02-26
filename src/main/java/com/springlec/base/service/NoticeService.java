package com.springlec.base.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.springlec.base.model.NoticeDto;
import com.springlec.base.model.QnaDto;

public interface NoticeService {
	public List<NoticeDto> listDao(@Param("requestPage") int requestPage, @Param("numOfTuplePerPage") int numOfTuplePerPage) throws Exception;

	int getTotalCount() throws Exception;


}
