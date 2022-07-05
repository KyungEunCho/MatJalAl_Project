package com.example.demo.dto;

import javax.validation.constraints.Pattern;

public class UserVo {
	
	private String usernum;
	@Pattern(regexp = "^([0-9a-zA-Z_\\.-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}$" , message = "올바른 이메일 형식이 아닙니다")
	private String email;
	@Pattern(regexp = "[A-Za-z0-9]{4,15}$", message = "아이디는 영어, 숫자 4 ~15자리로 입력 가능합니다")
	private String id;
	@Pattern(regexp = "^[가-힣|a-z|A-Z|0-9|]+$", message = "닉네임은 한글, 영어, 숫자만 4 ~10자리로 입력 가능합니다")
	private String nick_name;
	private String password;
	private String naver;
	private String kakao_user_num;
	private String profile_photo;
	public String getUsernum() {
		return usernum;
	}
	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNaver() {
		return naver;
	}
	public void setNaver(String naver) {
		this.naver = naver;
	}
	public String getKakao_user_num() {
		return kakao_user_num;
	}
	public void setKakao_user_num(String kakao_user_num) {
		this.kakao_user_num = kakao_user_num;
	}
	public String getProfile_photo() {
		return profile_photo;
	}
	public void setProfile_photo(String profile_photo) {
		this.profile_photo = profile_photo;
	}
	
	@Override
	public String toString() {
		return "Sign [usernum =" + usernum +", email =" + email + ", id =" + id + ", nick_name =" + nick_name + ", password =" + password +
				", naver = " + naver + ", kakao_user_num =" + kakao_user_num + ", profile_photo =" + profile_photo + "]";
	}
}