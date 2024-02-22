package com.springlec.base.service;

public interface QnaWriteService {
	public void writeDao(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String qnaDate) throws Exception;
}
