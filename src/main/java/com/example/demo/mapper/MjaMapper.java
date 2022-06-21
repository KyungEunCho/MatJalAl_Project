package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MjaMapper {

	public List<HashMap<String, Object>> findAll();

	public HashMap<String, String> imgRoute(String imgRoute);

	public HashMap<String, Integer> feedNum(int feedNum);

	public HashMap<String, String> getNewFeed(HashMap<String, String> params) throws Throwable;
}
