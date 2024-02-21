package com.springlec.base.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.springlec.base.service.TestDaoService;

@Controller
public class MainController {

	@Autowired
	TestDaoService service;
	
	@GetMapping("/")
	public String menu() throws Exception {
		return "index";
	}
}
