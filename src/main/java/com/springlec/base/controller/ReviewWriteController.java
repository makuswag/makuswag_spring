package com.springlec.base.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.dao.ReviewWriteDao;
import com.springlec.base.model.ReviewWriteDto;
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
	        System.out.println("리뷰 불러오는 값 확인"+reviewWriteDto);
			return "board/reviewWrite";
		}
	
	  
	
}
