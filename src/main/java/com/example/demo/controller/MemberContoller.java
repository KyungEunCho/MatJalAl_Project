package com.example.demo.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.IMjaService;


@Controller
public class MemberContoller {
	
	@Autowired 
	private IMjaService ims;
	
/*	@GetMapping("/login")
	@ResponseBody
	public List <HashMap<String, Object>> findAll() {
	      
		return null;
	} */
		
		@RequestMapping(value="/login", method=RequestMethod.GET)
		public String login(@RequestParam(value = "code", required = false) String code) throws Throwable {
			System.out.println("#########" + code);
			
			// 위에서 만든 코드 아래에 코드 추가
			String access_Token = ims.getAccessToken(code);
			System.out.println("###access_Token#### : " + access_Token);
			
			// 위에서 만든 코드 아래에 코드 추가
			HashMap<String, Object> userInfo = ims.getUserInfo(access_Token);
			System.out.println("###access_Token#### : " + access_Token);
			System.out.println("###nickname#### : " + userInfo.get("nickname"));
			System.out.println("###email#### : " + userInfo.get("email"));
			
			return "login";
			/*
			 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
			 * 없는 페이지를 넣어도 무방합니다.
			 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
			 */
	    	}

		
		
		
	}

