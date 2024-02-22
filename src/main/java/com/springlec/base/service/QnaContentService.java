package com.springlec.base.service;

import com.springlec.base.model.QnaContentDto;

public interface QnaContentService {
	public QnaContentDto contentDao(int qnaSeq) throws Exception;
}
