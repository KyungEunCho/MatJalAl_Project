package com.example.demo.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.dto.KakaoDTO;
import com.example.demo.service.MemberService;


@Controller
public class MemberContoller {
	
	@Autowired 
	private MemberService ms;
	
	@Autowired
	private HttpSession session;

		
		@RequestMapping(value="/login", method=RequestMethod.GET)
		public String login(@RequestParam(value = "code", required = false) String code) {
			System.out.println("#########" + code);
			
			// 위에서 만든 코드 아래에 코드 추가
			String access_Token = ms.getAccessToken(code);
			System.out.println("###access_Token#### : " + access_Token);

			// 위에서 만든 코드 아래에 코드 추가
			KakaoDTO userInfo = ms.getUserInfo(access_Token);
			System.out.println("###access_Token#### : " + access_Token);
			
	//		 System.out.println("###nickname#### : " + userInfo.get("nickname"));
	//		 System.out.println("###email#### : " + userInfo.get("email"));
			 
			
			// 아래 코드가 추가되는 내용
			session.invalidate();
			// 위 코드는 session객체에 담긴 정보를 초기화 하는 코드.
			//session.setAttribute("kakaoN", userInfo.getK_name());
			//session.setAttribute("kakaoE", userInfo.getK_email());
			// 위 2개의 코드는 닉네임과 이메일을 session객체에 담는 코드
			// jsp에서 ${sessionScope.kakaoN} 이런 형식으로 사용할 수 있다.
		    
		    // 리턴값은 용도에 맞게 변경하세요~
			return "login";
			/*
			 * 리턴값의 testPage는 아무 페이지로 대체해도 괜찮습니다.
			 * 없는 페이지를 넣어도 무방합니다.
			 * 404가 떠도 제일 중요한건 #########인증코드 가 잘 출력이 되는지가 중요하므로 너무 신경 안쓰셔도 됩니다.
			 */
	    	}

	}

