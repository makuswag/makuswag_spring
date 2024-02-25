package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.MyPageDto;

public interface MyPageDaoService {
	public  List<MyPageDto> myPageDao(String startDate, String endDate) throws Exception;



}
