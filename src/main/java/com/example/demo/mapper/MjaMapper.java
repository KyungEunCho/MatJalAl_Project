package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.Sign;

@Mapper
public interface MjaMapper {

	public List<HashMap<String, String>> feedList(HashMap<String, String> params) throws Throwable;
	
	public List<HashMap<String, Object>> findAll();

	HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> imgRoute(String imgRoute);

	public HashMap<String, Integer> feedNum(int feedNum);
	
	//회원가입
	public int signUp(Sign sign) throws Throwable;
}
