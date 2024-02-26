package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springlec.base.model.NoticeDto;
import com.springlec.base.model.QnaDto;
import com.springlec.base.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService service;
	
	
	@GetMapping("notice_view")
	public String list(@RequestParam(defaultValue = "1") int page, Model model) throws Exception {
	    int numOfTuplePerPage = 10; // 페이지당 튜플 개수
	    List<NoticeDto> listDao = service.listDao(page, numOfTuplePerPage); // 서비스 계층에서 데이터 조회
	    model.addAttribute("Noticelist", listDao);

	    int totalCount = service.getTotalCount(); // 전체 데이터 개수 조회
	    int totalPage = (int) Math.ceil((double) totalCount / numOfTuplePerPage); // 전체 페이지 개수 계산
	    int pageBlockSize = 5;
	    int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
	    int endPage = Math.min(startPage + pageBlockSize - 1, totalPage);

	    model.addAttribute("currentPage", page);
	    model.addAttribute("totalPage", totalPage);
	    model.addAttribute("startPage", startPage);
	    model.addAttribute("endPage", endPage);

	    return "./board/notice";
	}
	
	
}
