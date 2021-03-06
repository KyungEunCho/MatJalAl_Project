package com.example.demo.service;

import java.util.HashMap;

public interface ISignService {

	public void sign(HashMap<String, String> params) throws Throwable;

	public int idCheck(String id) throws Throwable;

	public int emailCheck(String email) throws Throwable;

	public int nicknameCheck(String nick_name) throws Throwable;

}
