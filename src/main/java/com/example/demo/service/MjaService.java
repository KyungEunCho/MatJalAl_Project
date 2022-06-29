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

import com.example.demo.dto.SignVo;
import com.example.demo.mapper.MjaMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class MjaService implements IMjaService {

	@Autowired
	private MjaMapper mjaMapper;
	private SqlSessionTemplate userSqlSession;
	
	public List<HashMap<String, Object>> findAll() {
		return mjaMapper.findAll();
	}
	
	/*
	 * @Override public List<HashMap<String, String>> getDataList(HashMap<String,
	 * String> params) throws Throwable { return MjaMapper.getDataList(params); }
	 */
	/*
	 * @Autowired private MjaMapper MjaMapper;
	 * 
	 * @Override public List<HashMap<String, String>> getDataList(String string,
	 * HashMap<String, String> params) throws Throwable { return
	 * MjaMapper.getDataList(params); }
	 */

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

	public String getAccessToken(String authorize_code) {
		
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		
		try {
			URL url = new URL(reqURL);
			
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
			
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=86851554646c136ec78c91a58cf4acdd"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8082/login"); // 본인이 설정한 주소
            
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
			
			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
			
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
			
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		return access_Token;
	}

	@Override
	public HashMap<String, Object> getUserInfo(String access_Token) throws Throwable {
		
		// 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
		
			// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();

			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
			
	} catch (Exception e) {
		e.printStackTrace();
	}
		return userInfo;
	}

}
