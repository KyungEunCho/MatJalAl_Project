package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import com.example.demo.dto.SignVo;

public interface IMjaService {

	//public List<HashMap<String, String>> getDataList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> feedList(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> imgRoute(String imgRoute);

	public HashMap<String, Integer> feedNum(int feedNum);
	
	//회원가입
	public int signUp(SignVo signVo) throws Throwable;

	public String getAccessToken(String code) throws Throwable;

	public HashMap<String, Object> getUserInfo(String access_Token) throws Throwable;


	
	
}
