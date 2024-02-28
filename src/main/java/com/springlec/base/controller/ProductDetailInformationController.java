package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springlec.base.model.ProductDetailInformationDto;
import com.springlec.base.model.UserDto;
import com.springlec.base.service.ProductDetailInformationDaoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProductDetailInformationController {
	
	@Autowired
	ProductDetailInformationDaoService service;
	
	//제품 상세페이지 화면 보여주기(이미지,상세내용), @RequestParam("proName") String proName 삭제,detail(proName)삭제(정민이형 끝나면 추가하기)
	@GetMapping("productDetailInformation")
	public String detail(@RequestParam(name = "proName") String proName,HttpServletRequest request, Model model) throws Exception{
		ProductDetailInformationDto productDetailInformation = service.productdetail(proName); // bId에 해당하는 게시물 정보를 가져옴(사진이랑 상품정보 다 가져옴)
		model.addAttribute("productDetailInformation", productDetailInformation); 
		 // proSeq 세션에 저장
	    HttpSession session = request.getSession();
	    session.setAttribute("proSeq", productDetailInformation.getProSeq());
		List<String> colors = service.color(proName);
		model.addAttribute("colors", colors);
		System.out.println("받아온 상품이름"+proName);
		System.out.println("제품정보: "+productDetailInformation);
		System.out.println("색 정보: "+colors);
//		List<String> colors = service.color(proName);
//		model.addAttribute("colors", colors);
		return "detail/productDetailInformation"; 
}
	//선택한 상품 구매하는 메소드 받아와야될 데이터 
	@PostMapping("productPurchaseSubmit")
	public String productPurchase(HttpServletRequest request ) throws Exception{
		//userId 가져오는 session값
		HttpSession session = request.getSession();
		// **************세션에서 뭐뭐 가져올껀지,파라미터로 넘길껀지 결정후 재작성 필요
		HttpSession sessionProductSeq = request.getSession();
		
		// ***************세션에서 뭐뭐 가져올껀지,파라미터로 넘길껀지 결정후 재작성 필요
		int proSeq = (int) sessionProductSeq.getAttribute("proSeq");
		System.out.println("상품의 시퀀스넘버"+proSeq);
		//userId값은 세션으로 가져와야됨(fix)
		UserDto user = (UserDto) session.getAttribute("user");
		String userId = user.getUserId();
		
		System.out.println("유저아이디"+userId);
		
		String pQty = request.getParameter("pQty");
		String pPrice = request.getParameter("pPrice");
//		String proSeq = request.getParameter("proSeq"); //세션으로 받을껀지 아니면 그냥 리퀘로 받을껀지 결정하고나서 주석해
		System.out.println(pQty+pPrice);
		String revContent = request.getParameter("reviewContent");
//		service.
		
		//세션정의: 어디서 꺼야하는지 다시 알아보기(여기서 끄면 상품 등록이 안됨
//		sessionProductSeq.invalidate(); 
		return "redirect:/productDetailInformation";//메인으로 보내야함?
		
	}
	
	
	
}
