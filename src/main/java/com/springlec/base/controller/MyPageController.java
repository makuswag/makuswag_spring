package com.springlec.base.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.springlec.base.service.MyPageDaoService;



@Controller
public class MyPageController {
	
	
	  @Autowired
	    MyPageDaoService service;	
	
	
	
}
