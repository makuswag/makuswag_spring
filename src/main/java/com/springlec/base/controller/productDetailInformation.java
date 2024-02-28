package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.model.ProductDetailInformationDto;
import com.springlec.base.service.ProductDetailInformationDaoService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class productDetailInformation {
	
	@Autowired
	ProductDetailInformationDaoService service;
	
	//제품 상세페이지 화면 보여주기(이미지,상세내용), @RequestParam("proName") String proName 삭제,detail(proName)삭제(정민이형 끝나면 추가하기)
	@GetMapping("productDetailInformation")
	public String detail(HttpServletRequest request, Model model) throws Exception{
		ProductDetailInformationDto productDetailInformation = service.productdetail(); // bId에 해당하는 게시물 정보를 가져옴(사진이랑 상품정보 다 가져옴)
		model.addAttribute("productDetailInformation", productDetailInformation); // 모델에 게시물 정보를 추가
		//컬러값 못가져옴 (js파일 나누는거 완료하고 처리!)
		List<String> colors = service.color();
		model.addAttribute("colors", colors);
		
		System.out.println("제품정보: "+productDetailInformation);
		System.out.println("색 정보: "+colors);
//		List<String> colors = service.color(proName);
//		model.addAttribute("colors", colors);
		return "detail/productDetailInformation"; // content_view 페이지로 이동
}
}
