<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="resources/css/find.css"/>
</head>
<body>
    <div class="body">
        <div class="logo">
            <img alt="logo" class="logo_image" src="resources/image/logo.png">
            <span class="logo_text">Mat Jal Al</span>
        </div>
        <hr>
       	 <input type="button" id="findId" name="findId" value="아이디 찾기">
       	 <input type="button" id="findPw" name="findPw" value="비밀번호 찾기">
        <hr>
        <div class="middle">
            <li class="con">
                <h4>아이디</h4>
            </li>
            <div class="box">
                <input type="text" id="find_email" name="find_email">
            </div>
            <li class="con">
                <h4>이메일</h4>
            </li>
            <div class="box">
                <input type="text" id="find_num" name="find_num">
                <input type="button" id="vcode" name="vcode" value="전송하기">
            </div>
            <br>
            <br>
            <h3>이메일로 새로운 비밀번호를 전송했습니다.</h3>
     	</div>
     </div>
</body>
</html>