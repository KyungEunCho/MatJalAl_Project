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
		// test
		// test by kwak
		
		// 9exg branch test 9exg 111
		
		// test 16:36
		
		// test 9exg 16:39
		
		// test 0614 10:39
	}
	
	@GetMapping ("/signUp") 
	public String signUp() {
		
		return "signUp";
	} 
	
	@GetMapping ("/updateProfile") 
	public String updateProfile() {
		
		return "updateProfile";
	} 
	
}
