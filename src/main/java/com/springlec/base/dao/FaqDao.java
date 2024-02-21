package com.springlec.base.dao;

import java.util.List;

import com.springlec.base.model.FaqDto;

public interface FaqDao {
	public List<FaqDto> listDao() throws Exception;
}
