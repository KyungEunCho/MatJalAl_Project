package com.example.demo.dto;

import javax.validation.constraints.Pattern;

public class SignVo {
	
	private String USER_NUM;
	@Pattern(regexp = "^([0-9a-zA-Z_\\.-]+)@([0-9a-zA-Z_-]+)(\\.[0-9a-zA-Z_-]+){1,2}$" , message = "올바른 이메일 형식이 아닙니다")
	private String EMAIL;
	@Pattern(regexp = "[A-Za-z0-9]{4,15}$", message = "아이디는 영어, 숫자 4 ~15자리로 입력 가능합니다")
	private String ID;
	@Pattern(regexp = "^[가-힣|a-z|A-Z|0-9|]+$", message = "닉네임은 한글, 영어, 숫자만 4 ~10자리로 입력 가능합니다")
	private String NICK_NAME;
	private String PASSWORD;
	private String NAVER;
	private String KAKAOTALK;
	private String PROFILE_PHOTO;
	
	public String getUSER_NUM() {
		return USER_NUM;
	}
	public void setUSER_NUM(String uSER_NUM) {
		USER_NUM = uSER_NUM;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getNICK_NAME() {
		return NICK_NAME;
	}
	public void setNICK_NAME(String nICK_NAME) {
		NICK_NAME = nICK_NAME;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getNAVER() {
		return NAVER;
	}
	public void setNAVER(String nAVER) {
		NAVER = nAVER;
	}
	public String getKAKAOTALK() {
		return KAKAOTALK;
	}
	public void setKAKAOTALK(String kAKAOTALK) {
		KAKAOTALK = kAKAOTALK;
	}
	public String getPROFILE_PHOTO() {
		return PROFILE_PHOTO;
	}
	public void setPROFILE_PHOTO(String pROFILE_PHOTO) {
		PROFILE_PHOTO = pROFILE_PHOTO;
	}
	
	@Override
	public String toString() {
		return "Sign [USER_NUM =" + USER_NUM +", EMAIL =" + EMAIL + ", ID =" + ID + ", NICK_NAME =" + NICK_NAME + ", PASSWORD =" + PASSWORD +
				", NAVER = " + NAVER + ", KAKAOTALK =" + KAKAOTALK + ", PROFILE_PHOTO =" + PROFILE_PHOTO + "]";
	}
}
