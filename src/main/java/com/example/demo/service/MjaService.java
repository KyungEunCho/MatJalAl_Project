package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.Sign;
import com.example.demo.mapper.MjaMapper;

@Service
public class MjaService implements IMjaService {

	@Autowired
	private MjaMapper mjaMapper;

	public List<HashMap<String, Object>> findAll() {
		return mjaMapper.findAll();
	}
	
	/*
	 * @Override public List<HashMap<String, String>> getDataList(HashMap<String,
	 * String> params) throws Throwable { return MjaMapper.getDataList(params); }
	 */
	/*
	 * @Autowired private MjaMapper MjaMapper;
	 * 
	 * @Override public List<HashMap<String, String>> getDataList(String string,
	 * HashMap<String, String> params) throws Throwable { return
	 * MjaMapper.getDataList(params); }
	 */

	@Override
	public HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable {
		return mjaMapper.getLogin(params);
	}

	@Override
	public List<HashMap<String, String>> feedList(HashMap<String, String> params) throws Throwable {
		return mjaMapper.feedList(params);
	}
	
	public HashMap<String, String> imgRoute(String imgRoute) {
		return mjaMapper.imgRoute(imgRoute);
	}
	
	public HashMap<String, Integer> feedNum(int feedNum) {
		return mjaMapper.feedNum(feedNum);
	}

	@Override
	public int signUp(Sign sign) throws Throwable {
		
		int result = mjaMapper.signUp(sign);
		return result;
	}
}
