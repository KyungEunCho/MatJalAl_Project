<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signUp</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/common/cmn.css?after" />
<link rel="stylesheet" type="text/css" href="resources/css/signUp.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/popup.css" />
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript" src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#btn_big").on("click", function() {
		checkData();
	});
	
	$("#id").keyup(function() {
		idFn();
	});
	
	$("#email").keyup(function() {
		emailFn();
	});
	
	$("#nick_name").keyup(function() {
		nicknameFn();
	});
	
	$("#password").keyup(function() {
		passwordFn();
	});
});

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
		<form action="sign" id="signUpForm" method="post">
			<div class="box_id">
				<div class="nm">아이디</div>
				<div class="one_line">
					<input type="text" class="box1" id="id" name="id" maxlength="15" placeholder="아이디를 입력해주세요"/>

				</div>
					<div class="id_message hide msg">4자 이상의 영문,숫자 혹은 영문과 숫자를 조합</div>
					<div class="id_ok hide msg success">사용할 수 있는 아이디입니다.</div>
					<div class="id_overlap hide msg">중복된 아이디가 있습니다.</div>
			</div>
			<div class="box_email">
				<div class="nm">이메일</div>
				<div class="one_line">
					<input type="text" class="box1" id="email" name="email" placeholder="이메일을 입력해주세요"/>
				</div>
				<div class="email_ok hide msg success">사용할 수 있는 이메일입니다.</div>
				<div class="email_overlap hide msg">중복된 이메일이 있습니다.</div>
				<div class="email_message hide msg">올바른 이메일 형식이 아닙니다.</div>
			</div>
			<div class="box_pw">
				<div class="nm">비밀번호</div>
				<div>
					<input type="password" class="box2" id="password" name="password" placeholder="비밀번호를 입력해주세요" />
				</div>
				<div class="pw_ok hide msg">사용할 수 있는 비밀번호 입니다.</div>
				<div class="pw_length hide msg">비밀번호 10자 이상 입력</div>
				<div class="pw_comb hide msg">영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합하여야 합니다.</div>
				<div class="pw_contn hide msg">동일한 숫자 3개 이상 연속 사용 불가합니다.</div>
				<div class="nm">비밀번호 재확인</div>
				<div class="box_pw2">
					<input type="password" class="box2" id="password2" name="password2" placeholder="비밀번호를 한번 더 입력해주세요"/>
				</div>
				<div class="pw_false hide msg">동일한 비밀번호를 입력해주세요.</div>
				<div class="pw_success hide msg success">동일한 비밀번호가 입력되었습니다.</div>
			</div>
			<div class="box_nick_name">
				<div class="nm">닉네임</div>
				<div class="one_line">
					<input type="text" class="box1" id="nick_name" name="nick_name" placeholder="사용할 닉네임을 입력해주세요"/>
				</div>
				<div class="nickname_ok hide msg success">사용할 수 있는 닉네임입니다.</div>
				<div class="nickname_overlap hide msg">중복된 닉네임이 있습니다.</div>
				<div class="nickname_message hide msg">닉네임은 한글 2~10자, 영문 및 숫자 2~20자 입니다(특수문자 포함X).</div>
			</div>
			<div class="sign_up">
				<div id="btn_big">가입하기</div>
			</div>
		</form>
	</div>
</div>
</body>
<script type="text/javascript" src="resources/js/signUp.js"></script>
</html>