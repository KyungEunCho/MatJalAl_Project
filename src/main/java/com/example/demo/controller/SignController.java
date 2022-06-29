package com.example.demo.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.ISignService;
import com.example.demo.util.Utils;

@Controller
public class SignController {

	@Autowired
	private ISignService iSignService;
	
	@RequestMapping(value = "signUp")
	public ModelAndView signUp(ModelAndView mav) {
		
		mav.setViewName("signUp");
		
		return mav;
	}
	
	@RequestMapping(value="sign")
	public ModelAndView sign(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		int cnt = iSignService.checkId(params);
		
		if(cnt == 0) {
			try {
				// 암호화
				params.put("pw", Utils.encryptAES128(params.get("pw")));
				
				System.out.println(params.get("pw"));
				// 복호화
				System.out.println(Utils.decryptAES128(params.get("pw")));
				
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
	
}
