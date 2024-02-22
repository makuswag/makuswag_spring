package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springlec.base.model.UserDto;
import com.springlec.base.service.UserDaoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserDaoService service;

	// 로그인 - login 눌렀을시 구분
	@PostMapping("whologin")
	public String whologin(HttpServletRequest request, HttpSession session, Model model) throws Exception {
		String userId = request.getParameter("userId");
		String userPasswd = request.getParameter("userPasswd");

		// 세션 설정
		session = request.getSession();
		session.setAttribute("userId", userId);

		try {
			// 사용자 정보 조회
			UserDto user = service.whologin(userId, userPasswd);

			if (user != null && user.getUserPw().equals(userPasswd)) {
				session.setAttribute("user", user);

				// userId가 "admin1"인 경우 관리자 페이지로 이동
				if (user.getUserId().equals("admin1")) {
					// 관리자 페이지로 리다이렉트
					return "redirect:/adminSuccess";
				} else {
					// 일반 회원 페이지로 리다이렉트
					return "redirect:/loginSuccess";
				}
			} else {
				// 로그인 에러시
				session.invalidate();
				model.addAttribute("error", "로그인에 실패했습니다.");
				return "redirect:/loginError";
			}
		} catch (Exception e) {
			// 예외 처리
			e.printStackTrace();
			model.addAttribute("error", "로그인 중 오류가 발생했습니다.");
			return "redirect:/loginError";
		}
	}

	// 관리자 아이디 성공
	@GetMapping("adminSuccess")
	public String adminSuccess() {
		return "status/adminSuccess";
	}

	// 일반회원 아이디 성공
	@GetMapping("loginSuccess")
	public String loginSuccess() {
		return "status/loginSuccess";
	}

	// 로그인 에러 페이지로 이동
	@GetMapping("loginError")
	public String loginError() {
		return "status/loginerror";
	}
	
	// 관리자 페이지로 이동
	@GetMapping("manager")
	public String maneger() {
		return "admin/UserManageAdmin";
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
