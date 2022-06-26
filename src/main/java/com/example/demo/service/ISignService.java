package com.example.demo.service;

import com.example.demo.dto.SignVo;

public interface ISignService {

	public void signUp(SignVo signVo) throws Throwable;

	public int overlapCheck(String value, String valueType);

}
