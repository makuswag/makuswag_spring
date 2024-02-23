package com.springlec.base.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.springlec.base.dao.QnaWriteDao;


@Service
public class QnaWriteServiceImpl implements QnaWriteService{
	
	
	@Autowired
	QnaWriteDao dao;
	
	
	
	
	@Override
	 public void writeDao(String qnaTitle, String qnaCategory, String qnaContent, String qnaImage, String userId) throws Exception{
		
		dao.writeDao(qnaTitle, qnaCategory, qnaContent, qnaImage, userId);
		
		
	
		
		
		
	}


	@Override
	public String uploadFile(MultipartFile file) throws Exception {
		// TODO Auto-generated method stub
		String qnaImage = file.getOriginalFilename();
		UUID uuid = UUID.randomUUID();
		qnaImage = uuid + qnaImage;
		
		// 파일 업로드 처리
		
		if(qnaImage !=null) {
			try {
				//파일 업로드
				//저장 경로
				String path = System.getProperty("user.dir") + "/src/main/resources/static/images/board";
				file.transferTo(new File(path + "/" + qnaImage));
				
				
				
			}catch(IOException i) {
				i.printStackTrace();
			}
			
		}
			
 		return qnaImage;
		
		
	}
	
	
}
