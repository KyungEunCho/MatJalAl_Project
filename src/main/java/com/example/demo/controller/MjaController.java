package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	
	@GetMapping("/place")
	public String place() {
		return "place";
	}
	
	/*
	 * @GetMapping("/login") public String login() { System.out.println("여긴가");
	 * return "login"; }
	 */
	
	@RequestMapping(value = "loginAjax", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String loginAjax(@RequestParam HashMap<String, String> params, HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		System.out.println("여긴가2");
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
	
	@GetMapping ("/updateProfile") 
	public String updateProfile() {
		
		return "updateProfile";

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
}
