package com.springlec.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ErrorController {

	@GetMapping("/error/404")
	public String handle404_1() {
		return "error/404";
	}
	
	@PostMapping("/error/404")
	public String handle404_2() {
		return "error/404";
	}
	
	@GetMapping("/error/500")
	public String handle500_1() {
		return "error/500";
	}
	
	@PostMapping("/error/500")
	public String handle500_2() {
		return "error/500";
	}
	
}
