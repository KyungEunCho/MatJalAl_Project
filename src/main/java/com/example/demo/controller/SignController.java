package com.example.demo.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.ISignService;
import com.example.demo.util.Utils;

@Controller
public class SignController {

	@Autowired
	private ISignService iSignService;
	
	@RequestMapping(value = "/signUp")
	public ModelAndView signUp(ModelAndView mav) {
		
		mav.setViewName("signUp");
		
		return mav;
	}
	
	@RequestMapping(value="/sign")
	public ModelAndView sign(@RequestParam HashMap<String, String> params,@RequestParam("id") String id, ModelAndView mav) throws Throwable {
		
		int cnt = iSignService.idCheck(id);
		
		if(cnt == 0) {
			try {
				// 암호화
				params.put("password", Utils.encryptAES128(params.get("password")));
				
				System.out.println(params.get("password"));
				// 복호화
				System.out.println(Utils.decryptAES128(params.get("password")));
				
				iSignService.sign(params);
				
				mav.setViewName("redirect:login");
			} catch (Exception e) {
				e.printStackTrace();
				
				mav.setViewName("sign");
			}
		} else {
			mav.addObject("check", "false");
			mav.setViewName("sign");
		}
		
		return mav;
	}
	//아이디 체크
	@PostMapping(value = "/idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) throws Throwable {
		int cnt = iSignService.idCheck(id);
		
		return cnt;
	}
	//이메일 체크
	@PostMapping(value = "/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) throws Throwable {
		int mail = iSignService.emailCheck(email);
		
		return mail;
	}
}
