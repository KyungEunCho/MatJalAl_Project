package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MjaMapper {

	List<HashMap<String, Object>> findAll();

	HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable;

}
