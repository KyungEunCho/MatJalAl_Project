package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

public interface IMjaService {

	public List<HashMap<String, Object>> findAll();

	public List<HashMap<String, String>> feedList(HashMap<String, String> params) throws Throwable;

}
