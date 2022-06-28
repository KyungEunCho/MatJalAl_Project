package com.example.demo.mapper;

import java.util.HashMap;

public interface ISignDao {

	public void sign(HashMap<String, String> params) throws Throwable;

	public int checkId(HashMap<String, String> params) throws Throwable;
}
