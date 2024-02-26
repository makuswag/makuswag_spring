package com.springlec.base.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springlec.base.model.QnaDto;
import com.springlec.base.model.UserDto;
import com.springlec.base.service.QnaDaoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class QnaController {
	@Autowired
	QnaDaoService service;

	// Q&A 보여주기

	@GetMapping("qna_view")
	public String list(@RequestParam(defaultValue = "1") int page, @RequestParam(required = false) String keyword,
			@RequestParam(required = false, defaultValue = "title") String searchType, Model model) throws Exception {

		int numOfTuplePerPage = 10; // 페이지당 튜플 개수
		// 검색어와 검색 유형에 따라 서비스 계층에서 데이터 조회
		if (keyword != null && !keyword.isEmpty()) {
			List<QnaDto> listDao = service.searchQna(page, numOfTuplePerPage, keyword, searchType);
			model.addAttribute("QnaList", listDao);
		} else {
			List<QnaDto> listDao = service.listDao(page, numOfTuplePerPage);
			model.addAttribute("QnaList", listDao);
		}

		int totalCount = service.getTotalCount(); // 전체 데이터 개수 조회
		int totalPage = (int) Math.ceil((double) totalCount / numOfTuplePerPage); // 전체 페이지 개수 계산
		int pageBlockSize = 5;
		int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
		int endPage = Math.min(startPage + pageBlockSize - 1, totalPage);

		model.addAttribute("currentPage", page);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);

		return "./board/qna";
	}
    // 검색 기능 추가
    @PostMapping("qnaQuery")
    public String listQuery(HttpServletRequest request, Model model) throws Exception {
    	List<QnaDto> listDao = service.listQuery(request.getParameter("qurey"), request.getParameter("content"));
    	model.addAttribute("QnaList", listDao);
    	return "./board/qna";
    }
    
    
    
}