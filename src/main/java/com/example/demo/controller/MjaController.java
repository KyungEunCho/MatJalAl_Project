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

import com.example.demo.common.CommonProperties;
import com.example.demo.service.IMjaService;
import com.example.demo.util.Utils;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class MjaController {

	@Autowired
	private IMjaService iMjaService;
	
	/*
	 * @GetMapping("/findAll")
	 * 
	 * @ResponseBody public List <HashMap<String, Object>> findAll() {
	 * 
	 * // return iMjaService.findAll(); // test // test by kwak
	 * 
	 * // 9exg branch test 9exg 111
	 * 
	 * // test 16:36 // push 테스트 }
	 */	
	/*
	 * @GetMapping("/findAll")
	 * 
	 * @ResponseBody public List <HashMap<String, Object>> findAll() {
	 * 
	 * return iMjaService.findAll(); }
	 */	

	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	@GetMapping("/feed")
	@RequestMapping("/feed")

	public String feed() {
		return "feed";
	} // 피드
	
	@GetMapping("/place")
	public String place() {
		return "place";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "loginAjax", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String loginAjax(@RequestParam HashMap<String, String> params, HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			//패스워드 암호화
			params.put("pw", Utils.encryptAES128(params.get("pw")));

			HashMap<String, String> data = iMjaService.getLogin(params);
			
			if (data != null && !data.isEmpty()) {
				session.setAttribute("nName", data.get("NICK_NAME"));

				modelMap.put("res", CommonProperties.RESULT_SUCCESS);
			} else {
				modelMap.put("res", CommonProperties.RESULT_FAILED);
			}

		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("res", CommonProperties.RESULT_ERROR);
		}
		
		
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
