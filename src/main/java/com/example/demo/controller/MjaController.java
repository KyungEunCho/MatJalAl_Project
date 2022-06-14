package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.IMjaService;

@Controller
public class MjaController {

	@Autowired
	private IMjaService iMjaService;
	
	@GetMapping("/feed")
	public String feed() {
		return "feed";
	} // 피드
	
	@GetMapping("/place")
	public String place() {
		return "place";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
}
