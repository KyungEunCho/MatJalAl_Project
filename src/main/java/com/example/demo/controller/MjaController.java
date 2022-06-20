package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.IMjaService;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	}
	
	@GetMapping ("/signUp") 
	public String signUp() {
		
		return "signUp";
	} 
	
	@GetMapping ("/updateProfile") 
	public String updateProfile() {
		
		return "updateProfile";
	} 

	@RequestMapping("/myFeed")
	public ModelAndView imgRoute(@RequestParam(value = "imgRoute") String imgRoute,
						ModelAndView mav) {
		
		System.out.println(imgRoute + "#################");
		
		HashMap<String, String> img = iMjaService.imgRoute(imgRoute);
		
		mav.addObject("img", img.get("ATT_FILE"));
		mav.setViewName("myFeed");
		
		return mav; 
	}
	
/*	
	@RequestMapping("/myFeed")
	public ModelAndView getComment(@RequestParam(value = "feedNum") int feedNum,
									ModelAndView mav) {
		
		System.out.println(feedNum + "#################");
		
		HashMap<String, Integer> feedNumRes = iMjaService.feedNum(feedNum);
		
		mav.addObject("feedNum", feedNumRes.get("FEED_NUM"));
		mav.setViewName("myFeed");
		
		return mav;	
	}
*/
	
	
}
