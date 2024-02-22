package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.model.MyPageDto;
import com.springlec.base.service.MyPageDaoService;


@Controller
public class MyPageController {
	
	
	@Autowired
	MyPageDaoService service;
	
	@PostMapping("/MypageServlet")
	    public String mypage(Model model) throws Exception {
	        List<MyPageDto> mypageDao = service.purchaseListDao();
	        model.addAttribute("mypage",mypageDao);
	        return "mypage";
	    }
	
	
	
	
}
