package com.example.demo.mapper;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.UserVo;

@Repository
public class SignDao implements ISignDao {
	
	@Autowired
	private SqlSession sql;
	
	private static final String NAMESPACE = "com.example.demo.dto.UserVo"; 
	
	@Override
	public void sign(HashMap<String, String> params) throws Throwable {
		sql.insert("sign.sign", params);	
	}

	@Override
	public int idCheck(String id) throws Throwable {
		int cnt = sql.selectOne(NAMESPACE+".idCheck", id);
		return cnt;
	}

	@Override
	public int emailCheck(String email) throws Throwable {
		int mail = sql.selectOne(NAMESPACE+".emailCheck", email);
		return mail;
	}

	@Override
	public int nicknameCheck(String nick_name) throws Throwable {
		int name = sql.selectOne(NAMESPACE+".nicknameCheck", nick_name);
		return name;
	}
}
