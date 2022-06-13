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
		// test by 9exg
	}
	
}
