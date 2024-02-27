package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.springlec.base.model.MyPageDto;
import com.springlec.base.model.QnaDto;
import com.springlec.base.model.UserDto;
import com.springlec.base.service.MyPageDaoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MyPageController {

	@Autowired
	MyPageDaoService service;

	@Autowired
	Gson gson;

	// 마이페이지
	@GetMapping("/MyPageController")
	@ResponseBody
	public String myPage(HttpSession session, @RequestParam(required = false) String startDate,
			@RequestParam(required = false) String endDate) throws Exception {
		UserDto user = (UserDto) session.getAttribute("user");
		String getUserId = user.getUserId();
		System.out.println("유저이름" + getUserId);
		System.out.println("날짜 가져오는지 테스트 :" + startDate + endDate);
		List<MyPageDto> mypageDao = service.myPageDao(startDate, endDate, getUserId);
		String jsonData = gson.toJson(mypageDao);
		System.out.println("마이페이지 컨트롤러 실행됨");
		System.out.println(jsonData);
		return jsonData;
	}


}
