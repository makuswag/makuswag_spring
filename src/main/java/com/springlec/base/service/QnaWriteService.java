package com.springlec.base.service;

import org.springframework.web.multipart.MultipartFile;


public interface QnaWriteService {
	 public void writeDao(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String userId) throws Exception;
	public String uploadFile(MultipartFile file) throws Exception;
}
