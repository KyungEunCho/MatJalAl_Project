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
	public int idCheck(String id) throws Throwable {
		int cnt = iSignDao.idCheck(id);
		return cnt;
	}

	@Override
	public int emailCheck(String email) throws Throwable {
		int mail = iSignDao.emailCheck(email);
		return mail;
	}

	@Override
	public int nicknameCheck(String nick_name) throws Throwable {
		int name = iSignDao.nicknameCheck(nick_name);
		return name;
	}
}
