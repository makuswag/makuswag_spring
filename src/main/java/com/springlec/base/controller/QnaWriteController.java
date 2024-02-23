package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springlec.base.model.UserDto;
import com.springlec.base.service.QnaWriteService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Configuration
@Controller
public class QnaWriteController {
	
	@Autowired
	QnaWriteService service;
	
	// Q&A 입력 화면 보여주기
	@GetMapping("qnaWrite_view")
	public String writeview(HttpSession session) throws Exception{
		
		
		
		return "/board/qnaWrite";
		
	}
	
	@PostMapping("qnaWriteSubmit")
	public String write(HttpServletRequest request, @RequestParam (name = "qnaImage", required = false)MultipartFile file) throws Exception{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		String userId = user.getUserId();

		System.out.println(userId);
		System.out.println(System.getProperty("user.dir") + "/src/main/resources/static/images");
		
		
		String qnaImage = null;
		
		if (file != null && !file.isEmpty()) qnaImage = service.uploadFile(file);
		String qnaTitle = request.getParameter("qnaTitle");
		String qnaCategory = request.getParameter("qnaCategory");
		String qnaContent = request.getParameter("qnaContent");
		
		
		service.writeDao(qnaTitle, qnaCategory, qnaContent, qnaImage, userId);
		
		System.out.println(qnaImage);
		
		return "redirect:/qna_view";
		
	}
	
}