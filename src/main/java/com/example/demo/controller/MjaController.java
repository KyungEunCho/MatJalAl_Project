package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.IMjaService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MjaController {

	@Autowired
	private IMjaService iMjaService;
	
	@GetMapping("/place")
	public String place() {
		return "place";
	}
	
	@GetMapping("/findAll")
	@ResponseBody
	public List <HashMap<String, Object>> findAll() {
	      
		return iMjaService.findAll();
		// test
		// test by kwak
		
		// 9exg branch test 9exg 111
		
		// test 16:36
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/feed")
	public ModelAndView feed(@RequestParam HashMap<String, String> params,
									ModelAndView mav) {
		
		mav.setViewName("feed");
		
		return mav;
	}
	
	@RequestMapping(value = "/feedAjax", method = RequestMethod.POST, 
			produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String feedAjax(@RequestParam HashMap<String, String> params, HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		List<HashMap<String, String>> list = iMjaService.feedList(params);
			
		modelMap.put("list", list);
		
		return mapper.writeValueAsString(modelMap);
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
