package com.springlec.base.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

	// Q&A 엿보기 구멍

	@GetMapping("qna_view")
    public String list(@RequestParam(defaultValue = "1") int page, Model model) throws Exception {
        int numOfTuplePerPage = 10;
        List<QnaDto> listDao = service.listDao(page, numOfTuplePerPage);
        model.addAttribute("QnaList", listDao);

        int totalCount = service.getTotalCount();
        int totalPage = (int) Math.ceil((double) totalCount / numOfTuplePerPage);
        int pageBlockSize = 5;
        int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
        int endPage = Math.min(startPage + pageBlockSize - 1, totalPage);

        model.addAttribute("currentPage", page);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "./board/qna";
    }
}