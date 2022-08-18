package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.UserVo;

@Mapper
public interface MjaMapper {

	public List<HashMap<String, String>> feedList(HashMap<String, String> params) throws Throwable;
	
	public List<HashMap<String, Object>> findAll();

	public HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> imgRoute(String imgRoute);

	public HashMap<String, Integer> feedNum(int feedNum);

	public List<HashMap<String, String>> addFeed(HashMap<String, String> params) throws Throwable;

}
