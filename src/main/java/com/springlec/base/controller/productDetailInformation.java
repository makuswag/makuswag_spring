package com.springlec.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springlec.base.model.ReviewDto;
import com.springlec.base.service.ReviewService;

@Controller
public class productDetailInformation {
	
	@Autowired
	ReviewService service;
	
	@GetMapping("productDetailInformation")
	public String list() throws Exception {
	   

	    return "./detail/productDetailInformation";
	}
}
