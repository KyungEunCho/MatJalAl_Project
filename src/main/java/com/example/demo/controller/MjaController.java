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

	
	@GetMapping("/main")
	public String main() {
		return "main";
	}
	
	@GetMapping("/place")
	public String place() {
		return "place";
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
				session.setAttribute("uNum", data.get("USER_NUM"));
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

	@RequestMapping(value = "/myFeed")
	public ModelAndView myFeed(@RequestParam HashMap<String, String> params,
									ModelAndView mav) throws Throwable {
		
		HashMap<String, String> data = iMjaService.feedView(params);
		
		System.out.println("리스트" + data);
		System.out.println("파람" + params);
		
		mav.addObject("data", data);
		
		mav.setViewName("myFeed");
		
		return mav;
	}
	
	
	@RequestMapping(value = "/feed")
	public ModelAndView feed(@RequestParam HashMap<String, String> params,
									ModelAndView mav) throws Throwable {
		
		mav.setViewName("feed");
		
		return mav;
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView login(@RequestParam HashMap<String, String> params,
									ModelAndView mav) {
		
		mav.setViewName("login");
		
		return mav;
	}
	
	
	@RequestMapping(value = "/feedAjax", method = RequestMethod.POST, 
	         produces = "text/json;charset=UTF-8")
	@ResponseBody
	   public String feedAjax(@RequestParam HashMap<String, String> params, 
			   										HttpSession session) throws Throwable {
	      ObjectMapper mapper = new ObjectMapper();
	      
	      Map<String, Object> modelMap = new HashMap<String, Object>();
	      
	      params.put("nName", String.valueOf(session.getAttribute("nName")));
	      params.put("uNum", String.valueOf(session.getAttribute("uNum")));
	      
	      
	      List<HashMap<String, String>> list = iMjaService.feedList(params);
	      
	      modelMap.put("list", list);
	      return mapper.writeValueAsString(modelMap);
	   }
	
	
	
	
	@RequestMapping(value = "/addFeedAjax", method = RequestMethod.POST,
			produces = "text/json;charset=UTF-8")
	
	@ResponseBody
	public String addFeedAjax(@RequestParam HashMap<String, String> params, HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
	    params.put("uNum", String.valueOf(session.getAttribute("uNum")));
	    
	    String store = iMjaService.getStoreSeq("com.example.demo.mapper.MjaMapper");
        params.put("storesq", store);
        
	    String feed = iMjaService.getFeedSeq("com.example.demo.mapper.MjaMapper");
        params.put("feedsq", feed);
		
		String hashtag = iMjaService.getHashTagSeq("com.example.demo.mapper.MjaMapper");
		params.put("hashTagsq", hashtag);
		 
        
        iMjaService.feedStore(params);
        iMjaService.feedWrite(params);
        iMjaService.feedPhoto(params);
        
        iMjaService.hashTag(params);
        iMjaService.hashTagFeed(params);
        
        modelMap.put("res", "success");
        
		return mapper.writeValueAsString(modelMap);
	}
	
	
}
