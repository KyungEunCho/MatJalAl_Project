package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

public interface IMjaService {

	public List<HashMap<String, Object>> findAll();

	public HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable;

}
