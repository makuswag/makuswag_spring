package com.springlec.base.dao;

public interface QnaWriteDao {
	public void writeDao(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String qnaDate) throws Exception;
}
