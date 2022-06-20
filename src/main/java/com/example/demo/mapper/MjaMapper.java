package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MjaMapper {

	List<HashMap<String, Object>> findAll();

	public List<HashMap<String, String>> feedList() throws Throwable;

}
