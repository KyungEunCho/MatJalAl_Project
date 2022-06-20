package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MjaMapper {

	public List<HashMap<String, String>> getDataList(HashMap<String, String> params) throws Throwable;
	List<HashMap<String, Object>> findAll();

	HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable;

}
