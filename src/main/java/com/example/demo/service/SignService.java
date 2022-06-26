package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.SignVo;
import com.example.demo.mapper.ISignDao;

@Service
public class SignService implements ISignService {
	
	@Autowired
	private ISignDao iSignDao;

	@Override
	public void signUp(SignVo signVo) throws Throwable {
		iSignDao.signUp(signVo);
	}

	@Override
	public int overlapCheck(String value, String valueType) {
		return iSignDao.overlapCheck(value, valueType);
	}

}
