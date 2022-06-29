<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>
<link rel="stylesheet" type="text/css" href="resources/css/signUp.css" />
</head>
<body>
<div class="wrap">
	<div class="logo">
		<img alt="logo" class="logo_image" src="resources/image/logo.png">
		<span class="logo_text">Mat Jal Al</span>
	</div>
	<div class="cont">
		<div class="email">
			<div class="nm">이메일</div>
			<div class="one_line">
				<input type="text" class="box1">
				<div class="btn_check">중복</br>체크</div>
				<div class="btn_check">인증번호</br>받기</div>
			</div>
			<div class="one_line">
				<input type="text" class="box1">
				<div class="btn_check">인증번호</br>입력</div>
			</div>
		</div>
		<div class="id">
			<div class="nm">아이디</div>
			<div class="one_line">
				<input type="text" class="box1">
				<div class="btn_check">중복</br>체크</div>
			</div>
		</div>
		<div class="pw">
			<div class="nm">비밀번호</div>
			<div>
				<input type="password" class="box2">
			</div>
			<div class="nm">비밀번호 재확인</div>
			<div>
				<input type="password" class="box2">
			</div>
		</div>
		<div class="nick_name">
			<div class="nm">닉네임</div>
			<div class="one_line">
				<input type="text" class="box1">
				<div class="btn_check">중복</br>체크</div>
			</div>
		</div>
		<div class="sign_up">
			<div class="btn_big">가입하기</div>
		</div>
	</div>
</div>
</body>
</html>