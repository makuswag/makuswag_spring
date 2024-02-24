package com.springlec.base.dao;

import com.springlec.base.model.QnaContentDto;

public interface QnaContentDao {
	public QnaContentDto contentDao(int qnaSeq, String qnaTitle, String qnaContent, String qnaImage, String qnaDate) throws Exception;
	
}
