package com.example.demo.repository;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.kakaoDTO;

@Repository
public class memberRepository {
	
	// mapper를 호출하기 위한 클래스 주입
	@Autowired
	private SqlSessionTemplate sql;

	public void kakaoInsert(HashMap<String, Object> userInfo) {
		sql.insert("Member.kakaoInsert",userInfo);
	}
	
	public kakaoDTO findkakao(HashMap<String, Object> userInfo) {
		System.out.println("RN:"+userInfo.get("nickname"));
		System.out.println("RE:"+userInfo.get("email"));
	return sql.selectOne("Member.findKakao", userInfo);
	}


}
