package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.model.QnaDto;
import com.springlec.base.service.QnaDaoService;

@Controller
public class QnaController {
	@Autowired
	QnaDaoService service;
	
	// Q&A 엿보기 구멍
	
	@GetMapping("qna_view")
	public String list(Model model) throws Exception{
		List<QnaDto> listDao = service.listDao();
		model.addAttribute("QnaList", listDao);
		
		return "./board/qna";
	}
	
}
