package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

public interface IMjaService {

	public List<HashMap<String, Object>> findAll();

	public HashMap<String, String> imgRoute(String imgRoute);

	public HashMap<String, Integer> feedNum(int feedNum);

	public HashMap<String, String> getNewFeed(HashMap<String, String> params) throws Throwable;

}
