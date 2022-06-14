package com.example.demo.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.MjaMapper;

@Service
public class MjaService implements IMjaService {

	@Autowired
	private MjaMapper mjaMapper;

	public List<HashMap<String, Object>> findAll() {
		return mjaMapper.findAll();
	}

	@Override
	public HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable {
		return mjaMapper.getLogin(params);
	}
}
