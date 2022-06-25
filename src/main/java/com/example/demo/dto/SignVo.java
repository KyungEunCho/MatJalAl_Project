package com.example.demo.dto;


public class SignVo {

	private String USER_NUM;
	private String EMAIL;
	private String ID;
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
