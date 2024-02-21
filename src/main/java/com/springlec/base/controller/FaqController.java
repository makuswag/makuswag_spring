package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.model.FaqDto;
import com.springlec.base.service.FaqDaoService;

@Controller
public class FaqController {
	
	@Autowired
	FaqDaoService service;
	
	//FAQ 보여주기
	
	
	@GetMapping("Faq_view")
	public String list(Model model) throws Exception{
		List<FaqDto> listDao = service.listDao();
		model.addAttribute("FaqList", listDao);
		
		return "faq";
	}
	
	
	
	
}
