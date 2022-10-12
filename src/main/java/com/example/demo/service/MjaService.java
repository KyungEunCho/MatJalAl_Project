package com.example.demo.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.UserVo;
import com.example.demo.mapper.MjaMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class MjaService implements IMjaService {

	@Autowired
	private MjaMapper mjaMapper;
	
	
	public List<HashMap<String, Object>> findAll() {
		return mjaMapper.findAll();
	}

	@Override
	public HashMap<String, String> getLogin(HashMap<String, String> params) throws Throwable {
		return mjaMapper.getLogin(params);
	}

	@Override
	public List<HashMap<String, String>> feedList(HashMap<String, String> params) throws Throwable {
		return mjaMapper.feedList(params);
	}
	
	public HashMap<String, String> imgRoute(String imgRoute) {
		return mjaMapper.imgRoute(imgRoute);
	}
	
	public HashMap<String, Integer> feedNum(int feedNum) {
		return mjaMapper.feedNum(feedNum);
	}

	@Override
	public List<HashMap<String, String>> addFeed(HashMap<String, String> params) throws Throwable {
		return mjaMapper.addFeed(params);
	}

	@Override
	public String getStoreSeq(String store) throws Throwable {
		return mjaMapper.getStoreSeq(store);
	}

	@Override
	public void feedStore(HashMap<String, String> params) throws Throwable {
		mjaMapper.feedStore(params);
	}

	@Override
	public void feedWrite(HashMap<String, String> params) throws Throwable {
		mjaMapper.feedWrite(params);
	}

	@Override
	public String getFeedSeq(String feed) throws Throwable {
		return mjaMapper.getFeedSeq(feed);
	}

	@Override
	public String getHashTagSeq(String hashtag) throws Throwable {
		return mjaMapper.getHashTagSeq(hashtag);
	}

	@Override
	public void feedPhoto(HashMap<String, String> params) throws Throwable {
		mjaMapper.feedPhoto(params);
	}

	@Override
	public void hashTag(HashMap<String, String> params) throws Throwable {
		mjaMapper.hashTag(params);
	}

	@Override
	public void hashTagFeed(HashMap<String, String> params) throws Throwable {
		mjaMapper.hashTagFeed(params);
	}

	@Override
	public HashMap<String, String> feedView(HashMap<String, String> params) throws Throwable {
		return mjaMapper.feedView(params);
	}


	}
