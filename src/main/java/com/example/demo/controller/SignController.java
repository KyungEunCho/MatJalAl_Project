package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.service.IMjaService;

@Controller
public class SignController {

	@Autowired
	private IMjaService iMjaService;
	
	// 회원가입
	@GetMapping ("/join") 
	public String signUp(Model model) throws Throwable {
		
		model.addAttribute("title", "회원가입");
		
		return "signUp";
	} 
}
