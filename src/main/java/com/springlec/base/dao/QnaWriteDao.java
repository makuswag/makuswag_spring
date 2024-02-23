package com.springlec.base.dao;

import org.springframework.web.multipart.MultipartFile;


public interface QnaWriteDao {
	 public void writeDao(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String userId) throws Exception;
	public String uploadFile(MultipartFile file) throws Exception;

}
