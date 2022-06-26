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
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.SignVo;
import com.example.demo.service.ISignService;

@Controller
public class SignController {

	@Autowired
	private ISignService iSignService;
	
	@GetMapping("/signUp")
	public String signUp() {
		
		return "signUp";
	}
	
	// @Valid : 데이터 유효성 검증
	// BindingResult : 검증 오류가 발생할 경우 오류 내용을 보관하는 스프링 프레임워크에서 제공하는 객체
	@PostMapping("/signUp")
	public String postJoin(@Valid SignVo signVo, BindingResult bindingResult, Model model) throws Throwable {
		System.out.println(signVo);
		if(bindingResult.hasErrors()) {
			System.out.println("에러");
			
			List<FieldError> list = bindingResult.getFieldErrors();
			Map<String, String> errorMsg = new HashMap<>();
			
			for(int i = 0; i<list.size(); i++) {
				String field = list.get(i).getField();
				String msg = list.get(i).getDefaultMessage();
				
				System.out.println("필드 = " + field);
				System.out.println("메시지 = " + msg);
				
				errorMsg.put(field, msg);
			}
			model.addAttribute("errorMsg", errorMsg);
			return "signUp";
		}
		
		iSignService.signUp(signVo);
		
		return "redirect:/login";
	}
	
	@ResponseBody
	@GetMapping("/overlapCheck")
	public int overlapCheck(String value, String valueType) {
		// value = 중복 체크할 값
		// valueType = ID, NICK_NAME
		System.out.println(value);
		System.out.println(valueType);
		int count = iSignService.overlapCheck(value, valueType);
		
		System.out.println(count);
		
		return count;
	}
	
}
