package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.model.NoticeDto;
import com.springlec.base.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	
	@GetMapping("notice_view")
	public String list(Model model) throws Exception {
		List<NoticeDto> listDao = service.listDao();
		model.addAttribute("NoticeList", listDao);
		
		return "./board/notice";
	}
	
	
}
