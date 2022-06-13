<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<style type="text/css">
.login {
	position: absolute;
	left: calc(50% - 25%);
	display: inline-block;
	vertical-align : top;
	width: 900px;
	height: auto;
	margin-top: 200px;
}

.mark_area {
	display: inline-block;
	width: 300px;
	height: 500px;
	background-image: url('resources/images/mark.png');
	background-size: 300px 500px;
	background-repeat: no-repeat;
}

.input {
	position: absolute;
	display: inline-block;
	width: 497px;
	height: 120px;
	margin-left: 100px;
	margin-top: 130px;
}

.input_id {
	display: inline-block;
	width: 305px;
	height: 50px;
	text-align: center;
	line-height: 50px;
	background-color: #ff770017;
	border-radius: 10px;
	color: gray;
}

.input_pw {
	display: inline-block;
	width: 305px;
	height: 50px;
	margin-top: 10px;
	text-align: center;
	line-height: 50px;
	background-color: #ff770017;
	border-radius: 10px;
	color: gray;
}

.login_btn {
	position: absolute;
	display: inline-block;
	width: 120px;
	height: 113px;
	text-align: center;
	line-height: 113px;
	margin-left: 420px;
	margin-top: 130px;
	background-color: #ff6600b8;
	border-radius: 10px;
	color: white;
}

.join_us {
	position: absolute;
	display: inline-block;
	width: 497px;
	height: 120px;
	margin-left: 100px;
	margin-top: 250px;
}

.join {
	display: inline-block;
	width: 163px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	border: 2px solid #ff770017;
	border-radius: 10px;
	font-size: 10pt;
}

.id_pw_find {
	display: inline-block;
	width: 264px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	border: 2px solid #ff770017;
	border-radius: 10px;
	font-size: 10pt;
}

.kakao_login {
	display: inline-block;
	width: 213px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	font-weight: bold;
	margin-top: 10px;
	border: 2px solid #FFD700;
	border-radius: 10px;
	color: #DAA520;
}

.naver_login {
	display: inline-block;
	width: 214px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	font-weight: bold;
	border: 2px solid #3CB371;
	border-radius: 10px;
	color: #3CB371;
}
</style>
</head>
<body>
<div class="login">
	<div class="mark_area">
	</div>
	<div class="input">
		<div class="input_id">Username</div>
		<div class="input_pw">Password</div>
	</div>
	<div class="login_btn">Login</div>
	<dlv class="join_us">
		<div class="join">회원가입</div>
		<div class="id_pw_find">아이디 / 비밀번호 찾기</div>
		<div class="kakao_login">카카오로 로그인</div>
		<div class="naver_login">네이버로 로그인</div>
	</dlv>
	
</div>
</body>
</html>