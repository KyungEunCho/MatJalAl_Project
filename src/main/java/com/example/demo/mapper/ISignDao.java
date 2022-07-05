package com.example.demo.mapper;

import java.util.HashMap;

public interface ISignDao {

	public void sign(HashMap<String, String> params) throws Throwable;

	public int checkId(HashMap<String, String> params) throws Throwable;

	public int idCheck(String id) throws Throwable;

	public int emailCheck(String email) throws Throwable;

	public int nicknameCheck(String nick_name) throws Throwable;
}
