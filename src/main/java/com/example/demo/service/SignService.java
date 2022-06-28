package com.example.demo.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.ISignDao;

@Service
public class SignService implements ISignService {
	
	@Autowired
	private ISignDao iSignDao;

	@Override
	public void sign(HashMap<String, String> params) throws Throwable {
		iSignDao.sign(params);
	}

	@Override
	public int checkId(HashMap<String, String> params) throws Throwable {
		return iSignDao.checkId(params);
	}
}
