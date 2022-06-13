<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>
<link rel="stylesheet" type="text/css" href="resources/css/updateProfile.css" />
</head>
<body>
<div class="wrap">
<!-- test -->
	<div class="logo">
		<img alt="logo" class="logo_image" src="resources/image/logo.png">
		<span class="logo_text">Mat Jal Al</span>
	</div>
	<div class="cont">
		<div class="email">
			<div class="nm">이메일</div>
			<div>
				<input type="text" class="box2" value="이메일은 수정 불가" readonly="readonly">
			</div>
		</div>
		<div class="id">
			<div class="nm">아이디</div>
			<div>
				<input type="text" class="box2" value="아이디는 수정 불가" readonly="readonly">
			</div>
		</div>
		<div class="pw">
			<div class="nm">현재 비밀번호</div>
			<div>
				<input type="password" class="box2">
			</div>
			<div class="nm">새로운 비밀번호</div>
			<div>
				<input type="password" class="box2">
			</div>
			<div class="nm">새로운 비밀번호 재확인</div>
			<div>
				<input type="password" class="box2">
			</div>
		</div>
		<div class="nick_name">
			<div class="nm">닉네임 변경</div>
			<div class="one_line">
				<input type="text" class="box1">
				<div class="btn_check">중복</br>체크</div>
			</div>
		</div>
		<div class="sign_up">
			<div class="btn_big">수정하기</div>
		</div>
	</div>
</div>
</body>
</html>