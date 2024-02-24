package com.springlec.base.service;

import com.springlec.base.model.QnaContentDto;

public interface QnaContentService {
	public QnaContentDto contentDao(int qnaSeq, String qnaTitle, String qnaContent, String qnaImage, String qnaDate) throws Exception;
}
