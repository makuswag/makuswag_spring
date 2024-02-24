package com.springlec.base.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.google.gson.Gson;
import com.springlec.base.model.MyPageDto;
import com.springlec.base.model.UserDto;
import com.springlec.base.service.MyPageDaoService;

import jakarta.servlet.http.HttpSession;



@Controller
public class MyPageController {
	
	
	  @Autowired
	    MyPageDaoService service;	
	  
	  @Autowired
		Gson gson;
	
	// 마이페이지
		@GetMapping("/MyPageController")
		public String myPage(Model model) throws Exception {
	        // 세션에서 사용자 정보를 가져옴

	        List<MyPageDto> mypageDao = service.myPageDao();
	        model.addAttribute("mypage", mypageDao);
	        System.out.println("마이페이지 컨트롤러 실행됨");
	        System.out.println(mypageDao);
	        String data = gson.toJson(mypageDao);    
	        System.out.println(data);
			return data;
		}
	
	  
	
}
