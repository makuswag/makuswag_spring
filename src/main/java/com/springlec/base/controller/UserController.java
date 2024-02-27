package com.springlec.base.controller;

import java.util.Properties;
import java.util.Random;

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

	// 로그인 에러 페이지로 이동
	@GetMapping("onlyAdmin")
	public String onlyAdmin() {
		return "status/onlyAdmin";
	}
	
	// 아이디 찾기 에러 페이지로 이동
	@GetMapping("findError")
	public String findError() {
		return "status/findError";
	}

	// 관리자 페이지로 이동
	@GetMapping("manager")
	public String manager(HttpSession session) {
		// 세션에서 사용자 정보를 가져옴
		UserDto user = (UserDto) session.getAttribute("user");

		// 사용자 정보가 없거나 관리자가 아닌 경우 예외 처리
		if (user == null || !user.getUserId().equals("admin1")) {
			// 관리자 아이디로 로그인 안했을 경우 localhost:8080/ 뒤에 적어도 관리자 페이지를 볼수 없다
			return "redirect:/onlyAdmin";
		}

		return "admin/UserManageAdmin";
	}

	// 아이디 찾기(이메일 인증)
	@GetMapping("idEmail")
	public String idEmail() throws Exception {
		return "identity/idEmail";
	}
	
	// 비밀번호 찾기(이메일 인증)
	@GetMapping("passwdEmail")
	public String passwdEmail() throws Exception {
		return "identity/passwdEmail";
	}
	
	// 아이디 찾기(본인 인증키 입력)
	@PostMapping("idCheckEmail")
	public String idCheckEmail(HttpServletRequest request, HttpSession session) throws Exception {
		// mail server 설정
		String smtpEmail = "foejakzm@gmail.com";
		String password = "mfpxcsvsahgnhxtr";

		// 메일 받을 주소
		String to_email = request.getParameter("email");
		/* Properties p = new Properties(); */
		Properties p = System.getProperties();
		p.setProperty("mail.transport.protocol", "smtp");
		/* p.setProperty("mail.host", "smtp.gmail.com"); */
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.ssl.protocols", "TLSv1.2");
		p.put("mail.smtp.socketFactory.port", "587");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		// 인증 번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		System.out.println(AuthenticationKey);

		javax.mail.Session session3 = javax.mail.Session.getInstance(p, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(smtpEmail, password);
			}
		});

		// email 전송
		try {
			javax.mail.internet.MimeMessage msg = new javax.mail.internet.MimeMessage(session3);

			msg.addRecipient(javax.mail.Message.RecipientType.TO, new javax.mail.internet.InternetAddress(to_email));

			// 메일 제목
			msg.setSubject("Mak U Swag의 회원가입 인증번호");
			// 메일 내용
			msg.setText("Mak U Swag의 회원가입을 위한 인증 번호는 [" + temp + "] 입니다");

			javax.mail.Transport t = session3.getTransport("smtp");
			t.connect(smtpEmail, password);
			t.sendMessage(msg, msg.getAllRecipients());
			t.close();

			// session4는 인증키용
			jakarta.servlet.http.HttpSession session4 = request.getSession();

			session4.setAttribute("authentication", AuthenticationKey);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}

		return "identity/idCheckEmail";
	}
	
	// 비밀번호 찾기(본인 인증키 입력)
	@PostMapping("passwdCheckEmail")
	public String passwdCheckEmail(HttpServletRequest request, HttpSession session) throws Exception {
		// mail server 설정
		String smtpEmail = "foejakzm@gmail.com";
		String password = "mfpxcsvsahgnhxtr";
		
		// 메일 받을 주소
		String to_email = request.getParameter("email");
		/* Properties p = new Properties(); */
		Properties p = System.getProperties();
		p.setProperty("mail.transport.protocol", "smtp");
		/* p.setProperty("mail.host", "smtp.gmail.com"); */
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.ssl.protocols", "TLSv1.2");
		p.put("mail.smtp.socketFactory.port", "587");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		
		// 인증 번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		System.out.println(AuthenticationKey);
		
		javax.mail.Session session3 = javax.mail.Session.getInstance(p, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(smtpEmail, password);
			}
		});
		
		// email 전송
		try {
			javax.mail.internet.MimeMessage msg = new javax.mail.internet.MimeMessage(session3);
			
			msg.addRecipient(javax.mail.Message.RecipientType.TO, new javax.mail.internet.InternetAddress(to_email));
			
			// 메일 제목
			msg.setSubject("Mak U Swag의 회원가입 인증번호");
			// 메일 내용
			msg.setText("Mak U Swag의 회원가입을 위한 인증 번호는 [" + temp + "] 입니다");
			
			javax.mail.Transport t = session3.getTransport("smtp");
			t.connect(smtpEmail, password);
			t.sendMessage(msg, msg.getAllRecipients());
			t.close();
			
			// session4는 인증키용
			jakarta.servlet.http.HttpSession session4 = request.getSession();
			
			session4.setAttribute("authentication", AuthenticationKey);
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		
		return "identity/passwdCheckEmail";
	}
	
	// 아이디 찾기(정보 입력)
	@GetMapping("findId")
	public String findId() throws Exception {
		return "member/findId";
	}
	
	// 비밀번호 찾기(정보 입력)
	@GetMapping("findPasswd")
	public String findPasswd() throws Exception {
		return "member/findPasswd";
	}
	
	// 아이디 찾기(정보 가져오기)
	@PostMapping("findIdEmail")
	public String findIdEmail(HttpServletRequest request, HttpSession session, Model model) throws Exception {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		try {
			// 사용자 정보 조회
			UserDto user = service.findId(name, email);
			session.setAttribute("user", user);
			
			if (user != null && user.getName().equals(name) && user.getEmail().equals(email)) {
				
				// 고객님의 정보를 조회
			    String message = "정보를 조회합니다.";
			    model.addAttribute("message", message);
				
				return "status/userId";
			} else {
				
				// 정보를 잘 못 입력하였을시
				model.addAttribute("error", "입력하신 정보가 없습니다.");
				return "redirect:/findError";
			}
		} catch (Exception e) {
			// 예외 처리
			e.printStackTrace();
			model.addAttribute("error", "입력하신 정보가 없습니다.");
			return "redirect:/findError";
		}
	}
	
	// 비밀번호 찾기(정보 가져오기)
	@PostMapping("findPwEmail")
	public String findPwEmail(HttpServletRequest request, HttpSession session, Model model) throws Exception {
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		try {
			// 사용자 정보 조회
			UserDto user = service.findPw(userId, name, email);
			session.setAttribute("user", user);
			
			if (user != null && user.getUserId().equals(userId) && user.getName().equals(name) 
							 && user.getEmail().equals(email)) {
				
				// 고객님의 정보를 조회
				String message = "정보를 조회합니다.";
				model.addAttribute("message", message);
				
				return "status/userPw";
			} else {
				
				// 정보를 잘 못 입력하였을시
				model.addAttribute("error", "입력하신 정보가 없습니다.");
				return "redirect:/findError";
			}
		} catch (Exception e) {
			// 예외 처리
			e.printStackTrace();
			model.addAttribute("error", "입력하신 정보가 없습니다.");
			return "redirect:/findError";
		}
	}

	// 회원 동의창으로
	@GetMapping("agree")
	public String agree() throws Exception {
		return "member/agree";
	}

	// 본인인증(이메일 발송)
	@GetMapping("identity")
	public String identity() throws Exception {
		return "identity/sendEmail";
	}

	// 본인인증(인증키 입력)
	@PostMapping("checkEmail")
	public String checkEmail(HttpServletRequest request, HttpSession session) throws Exception {
		// mail server 설정
		String smtpEmail = "foejakzm@gmail.com";
		String password = "mfpxcsvsahgnhxtr";

		// 메일 받을 주소
		String to_email = request.getParameter("email");
		/* Properties p = new Properties(); */
		Properties p = System.getProperties();
		p.setProperty("mail.transport.protocol", "smtp");
		/* p.setProperty("mail.host", "smtp.gmail.com"); */
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", "587");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.ssl.protocols", "TLSv1.2");
		p.put("mail.smtp.socketFactory.port", "587");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		// 인증 번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rnd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rnd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rnd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rnd.nextInt(10)));
				break;
			}
		}
		String AuthenticationKey = temp.toString();
		System.out.println(AuthenticationKey);

		javax.mail.Session session3 = javax.mail.Session.getInstance(p, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(smtpEmail, password);
			}
		});

		// email 전송
		try {
			javax.mail.internet.MimeMessage msg = new javax.mail.internet.MimeMessage(session3);

			msg.addRecipient(javax.mail.Message.RecipientType.TO, new javax.mail.internet.InternetAddress(to_email));

			// 메일 제목
			msg.setSubject("Mak U Swag의 회원가입 인증번호");
			// 메일 내용
			msg.setText("Mak U Swag의 회원가입을 위한 인증 번호는 [" + temp + "] 입니다");

			javax.mail.Transport t = session3.getTransport("smtp");
			t.connect(smtpEmail, password);
			t.sendMessage(msg, msg.getAllRecipients());
			t.close();

			// session4는 인증키용
			jakarta.servlet.http.HttpSession session4 = request.getSession();

			session4.setAttribute("authentication", AuthenticationKey);
//					data.put("authentication", AuthenticationKey);
//					data.put("result", "true");
		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}

		return "identity/checkEmail";
	}

	// 회원가입
	@PostMapping("memberJoin")
	public String memberJoin(HttpSession session) throws Exception {
		session.invalidate();
		return "member/join";
	}

}
