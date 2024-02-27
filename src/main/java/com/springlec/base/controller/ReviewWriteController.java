package com.springlec.base.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springlec.base.dao.ReviewWriteDao;
import com.springlec.base.model.ReviewWriteDto;
import com.springlec.base.model.UserDto;
import com.springlec.base.service.MyPageDaoService;
import com.springlec.base.service.ReviewWriteDaoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;




@Controller
public class ReviewWriteController {
	
	
	  @Autowired
	   ReviewWriteDaoService service;	
	  
	// 리뷰작성 페이지(리뷰화면 띄울때)
		@GetMapping("reviewWrite")
		public String reviewWrite(HttpSession session, HttpServletRequest request, Model model) throws Exception {
			System.out.println("리뷰라이트 컨트롤러 실행됨");
			
			// 받은 데이터 확인
			String name = request.getParameter("proName");
			System.out.println("리뷰 작성 페이지로 전달된 proName: " + name);
			session.setAttribute("proName", name);
			System.out.println(name);
			//상품 사진,이름 가져오기
			 // 상품 사진, 이름 가져오기
			  ReviewWriteDto reviewWriteDto = service.getReviewWriteDao(name);

	        // 모델에 ReviewWriteDto 추가
	        model.addAttribute("reviewWriteDto", reviewWriteDto);
	        System.out.println("ReviewWriteDto: " + reviewWriteDto);
	        // proSeq 값을 세션에 저장
	        session.setAttribute("proSeq", reviewWriteDto.getProSeq());
	        System.out.println("리뷰 불러오는 값 확인"+reviewWriteDto.getProSeq());
			return "board/reviewWrite";
		}
	
		@PostMapping("reviewWriteSubmit")
		public String write(HttpServletRequest request ) throws Exception{
			//userId 가져오는 session값
			HttpSession session = request.getSession();
			//proSeq 세션값가져오는session
			HttpSession sessionProductSeq = request.getSession();
			
			// 세션에서 proSeq 값을 가져오기
			int proSeq = (int) sessionProductSeq.getAttribute("proSeq");
			System.out.println("상품의 시퀀스넘버"+proSeq);
			// 세션에서 userId 값을 가져오기
			UserDto user = (UserDto) session.getAttribute("user");
			String userId = user.getUserId();
			
			System.out.println(userId);
			
			String revTitle = request.getParameter("reviewTitle");
			System.out.println(revTitle);
			String revContent = request.getParameter("reviewContent");
			service.reviewWriteDao(proSeq, userId, revTitle, revContent);
			
			
//			sessionProductSeq.invalidate();
			return "redirect:/myPage";
			
		}
	
}
