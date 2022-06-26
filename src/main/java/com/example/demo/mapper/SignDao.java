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
	public void signUp(SignVo signVo) throws Throwable {
		sql.insert("sign.signUp", signVo);
	}

	@Override
	public int overlapCheck(String value, String valueType) {
		Map<String, String> map = new HashMap<>();
		map.put("value", value);
		map.put("valueType", valueType);
		
		return sql.selectOne("sign.overlapCheck" ,map);
	}

}
