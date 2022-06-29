package com.example.demo.service;

import java.util.HashMap;

public interface ISignService {

	public void sign(HashMap<String, String> params) throws Throwable;

	public int checkId(HashMap<String, String> params) throws Throwable;

}
