package com.example.demo.mapper;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.demo.dto.SignVo;

@Repository
public class SignDao implements ISignDao {
	
	@Autowired
	private SqlSession sql;

	@Override
	public void sign(HashMap<String, String> params) throws Throwable {
		sql.insert("sign.sign", params);	
	}

	@Override
	public int checkId(HashMap<String, String> params) throws Throwable {
		return sql.selectOne("sign.checkId", params);
	}
}
