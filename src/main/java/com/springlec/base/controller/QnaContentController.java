package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.model.QnaContentDto;
import com.springlec.base.service.QnaContentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class QnaContentController {
	
	@Autowired
	QnaContentService service;
	
	
	@GetMapping("qnaContent_view")
	public String contentview(HttpServletRequest request, Model model) throws Exception {
		
		
		
		int qnaSeq = Integer.parseInt(request.getParameter("qnaSeq"));
		String qnaTitle = request.getParameter("qnaTitle");
		String qnaContent = request.getParameter("qnaContent");
		String qnaImage = request.getParameter("qnaImage");
		String qnaDate = request.getParameter("qnaDate");
		int countResult = service.count(qnaSeq); // qnaSeq를 조건으로 해서 count를 가져옴

	    model.addAttribute("countResult", countResult);

		QnaContentDto contentDao = service.contentDao(qnaSeq, qnaTitle, qnaContent, qnaImage, qnaDate);
				
		model.addAttribute("content_view", contentDao);
		
		
		return "board/qnaContent";
		
	}
	
}
