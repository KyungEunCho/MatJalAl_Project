package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class MemberContoller {
	
	@GetMapping("/login")
	@ResponseBody
	public List <HashMap<String, Object>> findAll() {
	      
		return null;
	}

}
