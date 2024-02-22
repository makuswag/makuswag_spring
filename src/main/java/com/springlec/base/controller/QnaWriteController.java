package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.service.QnaWriteService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class QnaWriteController {
	
	@Autowired
	QnaWriteService service;
	
	// Q&A 입력 화면 보여주기
	@GetMapping("qnaWrite_view")
	public String writeview() throws Exception{
		
		return "/board/qnaWrite";
		
	}
	
	@PostMapping("qnaWriteSubmit")
	public String write(HttpServletRequest request) throws Exception{
		service.writeDao(request.getParameter("qnaTitle"),
						 request.getParameter("qnaCategory"),
						 request.getParameter("qnaContent"),
						 request.getParameter("qnaImage"),
						 request.getParameter("qnaDate"));
		
		return "redirect:qna";
		
	}
	
}
