package com.springlec.base.config;

import java.util.HashMap;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class HashMapConfig {
 
	
	@Bean
    HashMap<String, Object> hashMap() {
    	return new HashMap<String, Object>();
    	
    }
}