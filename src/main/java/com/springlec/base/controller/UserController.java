package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.service.UserDaoService;

@Controller
public class UserController {

	@Autowired
	UserDaoService service;
	
	// 로그인 - login 눌렀을시 구분
	@PostMapping("whologin")
	public String whologin() throws Exception {
		return "member/myPage";
	}
	
	// 아이디 찾기
	@GetMapping("findId")
	public String findId() throws Exception {
		return "member/findId";
	}
	
	// 비밀번호 찾기
	@GetMapping("findPasswd")
	public String findPasswd() throws Exception {
		return "member/findPasswd";
	}
	
	// 회원 동의창으로
	@GetMapping("agree")
	public String agree() throws Exception {
		return "member/agree";
	}
	
	// 본인인증(이메일 발송)
	@GetMapping("identity")
	public String identity() throws Exception {
		return "member/sendEmail";
	}
	
	// 본인인증(인증키 입력)
	@PostMapping("checkEmail")
	public String checkEmail() throws Exception {
		return "member/checkEmail";
	}
	
	// 회원가입
	@PostMapping("memberJoin")
	public String memberJoin() throws Exception {
		return "member/join";
	}
	
}
