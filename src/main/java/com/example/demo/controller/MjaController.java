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
	
	@GetMapping("/findAll")
	@ResponseBody
	public List <HashMap<String, Object>> findAll() {
	      
		return iMjaService.findAll();
	}	
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	@GetMapping("/feed")
	public String feed() {
		return "feed";
	}
	
	@GetMapping("/place")
	public String place() {
		return "place";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping ("/signUp") 
	public String signUp() {
		
		return "signUp";
	} 
	
	@GetMapping ("/updateProfile") 
	public String updateProfile() {
		
		return "updateProfile";
	}
	
	@GetMapping("/myFeed")
	public String myFeed() {
		return "myFeed";
	}
	
	
}
