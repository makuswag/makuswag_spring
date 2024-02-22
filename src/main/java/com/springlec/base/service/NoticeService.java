package com.springlec.base.service;

import java.util.List;

import com.springlec.base.model.NoticeDto;

public interface NoticeService {
	public List<NoticeDto> listDao() throws Exception;
}
