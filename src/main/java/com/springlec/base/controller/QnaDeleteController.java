package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.model.UserDto;
import com.springlec.base.service.QnaDeleteService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class QnaDeleteController {
	
	@Autowired
	QnaDeleteService service;
	
	
	// Qna 게시물 삭제
	
	@GetMapping("qnaDelete")
	public String delete(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		UserDto user = (UserDto) session.getAttribute("user");
		String userId = user.getUserId();
		
		service.DeleteDao(Integer.parseInt(request.getParameter("qnaSeq")), userId);
		return "redirect:/qna_view";
		
	}
	
}
