package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.service.IMjaService;

// dh test
@Controller
public class FindController {

	@Autowired
	private IMjaService iMjaService;
	
	   // @GetMapping : Get방식으로 통신 하겠다. query parameter 방식으로 data를 주고받겠다. 일반적으로 select에 사용.
	   @GetMapping ("/findId")
	   public String findId() {
	      //리턴할 페이지 명
	      return "findId" ; 
	   }
	   @GetMapping ("/findId2")
	   public String findId2() {
		   //리턴할 페이지 명
		   return "findId2" ; 
	   }
	   @GetMapping ("/findPw")
	   public String findPw() {
		   //리턴할 페이지 명
		   return "findPw" ; 
	   }
	   
	   
}
