package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.dto.SignVo;
import com.example.demo.service.IMjaService;

@Controller
public class SignController {

	@Autowired
	private IMjaService iMjaService;
	
	// 회원가입
	@GetMapping ("/signUp") 
	public String signUp(Model model) throws Throwable {

		return "signUp";
	} 
	
	// @Valid : 데이터 유효성 검증
	// BindingResult : 검증 오류가 발생할 경우 오류 내용을 보관하는 스프링 프레임워크에서 제공하는 객체
	@PostMapping(value = "/signUp")
	public String postSign(@Valid SignVo signVo, BindingResult bindingResult, Model model) throws Throwable {
		System.out.println(signVo);
		
		if(bindingResult.hasErrors()) {
			System.out.println("에러");
			
			// 에러가 있을 경우 List<FieldError> list = bindingResult.getFieldErrors(); 통해 에러정보 확인 후 map에 담아 화면에 보여줌
			List<FieldError> list = bindingResult.getFieldErrors();
			Map<String, String> errorMsg = new HashMap();
			
			for(int i=0; i<list.size(); i++) {
				String field = list.get(i).getField();
				String msg = list.get(i).getDefaultMessage();
				
				System.out.println("필드 = " + field);
				System.out.println("메세지 = " + msg);
				
				errorMsg.put(field, msg);
			}
			model.addAttribute("errorMsg", errorMsg);
			return "signUp";
		}
		return "login";
	}
}
