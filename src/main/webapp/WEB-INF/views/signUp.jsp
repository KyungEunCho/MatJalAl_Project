<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/signUp.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/popup.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/cmn.css" />
<script type="text/javascript">
$(document).ready(function() {
	
	$(".btn_big").on("click", function() {
		if(checkEmpty("#EMAIL")) {
			alert("이메일을 입력하세요.");
		} else if(checkEmpty("#ID")) {
			alert("아이디를 입력하세요.");
		} else if(checkEmpty("#PASSWORD")) {
			alert("비밀번호를 입력하세요.");
		} else {
			alert("회원가입 완료");
			$("#signUpForm").submit();
		}
	})
});
function checkEmpty(sel) {
	if($.trim($(sel).val()) == "") {
		return true;
	} else {
		return false;
	}
}
</script>
</head>
<body>
<div class="wrap">
	<a href="login">
	<div class="logo">
		<img alt="logo" class="logo_image" src="resources/image/logo.png">
		<span class="logo_text">Mat Jal Al</span>
	</div>
	</a>
	<div class="cont">
		<form action="signUp" id="signUpForm" method="post">
			<div class="email">
				<div class="nm">이메일</div>
				<div class="one_line">
					<input type="text" class="box1" id="EMAIL" name="EMAIL" />
					<div class="btn_check">중복</br>체크</div>
					<div class="btn_check">인증번호</br>받기</div>
				</div>
				<div class="one_line">
					<input type="text" class="box1" >
					<div class="btn_check">인증번호</br>입력</div>
				</div>
			</div>
			<div class="id">
				<div class="nm">아이디</div>
				<div class="one_line">
					<input type="text" class="box1" id="ID" name="ID" />
					<div class="btn_check">중복</br>체크</div>
				</div>
			</div>
			<div class="pw">
				<div class="nm">비밀번호</div>
				<div>
					<input type="password" class="box2" id="PASSWORD" name="PASSWORD" />
				</div>
				<div class="nm">비밀번호 재확인</div>
				<div>
					<input type="password" class="box2">
				</div>
			</div>
			<div class="nick_name">
				<div class="nm">닉네임</div>
				<div class="one_line">
					<input type="text" class="box1" id="NICK_NAME" name="NICK_NAME" />
					<div class="btn_check">중복</br>체크</div>
				</div>
			</div>
			<div class="sign_up">
				<div class="btn_big">가입하기</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>