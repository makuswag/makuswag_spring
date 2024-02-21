package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.service.TestDaoService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {

	@Autowired
	TestDaoService service;
	
	// 메인으로
	@GetMapping("/") 
	public String menu() throws Exception {
		return "index";
	}
	
	// 로그아웃
	@GetMapping("logout") 
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "index";
	}
	
	// ------------------ Header ---------------------
	// 로그인
	@GetMapping("login")
	public String login(HttpSession session) throws Exception {
		session.invalidate();
		return "./member/login";
	}
	
	// 마이페이지
	@GetMapping("myPage")
	public String myPage() throws Exception {
		return "./member/myPage";
	}
	
	// 카트
	@GetMapping("cart")
	public String cart() throws Exception {
		return "./member/cart";
	}
	
	// ------------------ sidemenu ---------------------
	// about us
	@GetMapping("about")
	public String about() throws Exception {
		return "./about/aboutUs";
	}
	
	// search
	@PostMapping("search")
	public String search() throws Exception {
		return "./product/search";
	}
	
	// search1
	@PostMapping("search1")
	public String search1() throws Exception {
		return "./product/search1";
	}
	
	// search2
	@PostMapping("search2")
	public String search2() throws Exception {
		return "./product/search2";
	}
	
	
	// ------------------ footer ---------------------
	
	// agreement
	@GetMapping("agreement")
	public String agreement() throws Exception {
		return "./member/agreement";
	}
	
	// privacy
	@GetMapping("privacy")
	public String privacy() throws Exception {
		return "./member/privacy";
	}
	
}
