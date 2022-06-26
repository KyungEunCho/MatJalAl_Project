package com.example.demo.mapper;

import com.example.demo.dto.SignVo;

public interface ISignDao {

	public void signUp(SignVo signVo) throws Throwable;

	public int overlapCheck(String value, String valueType);

}
