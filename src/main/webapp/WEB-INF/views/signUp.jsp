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
<script type="text/javascript" src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/js/signUp.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#ID").keypress(function() {
		const ID = $("#ID").val().replaceAll("", "");
		const msgBox = $(this).siblings(".msg_box");
		
		if(!ID) {
			msgBox.text("아이디를 입력해주세요.");
			isSubmit.setIdCheck(false);
			return;
		}
			
		if(!idCheck(ID)) {
			msgBox.test("사용할 수 없는 아이디입니다.");
			isSubmit.setIdCheck(false);
			return;
		}
		const data = {
				value : ID,
				valueType : "ID"
		};
		if(overlapCheck(data)) {
			msgBox.text("사용 가능합니다.");
			isSubmit.setIdCheck(true);
		} else {
			msgBox.text("이미 사용중인 아이디입니다.");
			isSubmit.setIdCheck(false);
		}
	});
	$("#EMAIL").focusout(function() {
		const EMAIL = $("#EMAIL").val();
		const msgBox = $(this).siblings(".msg_box");
		
		if(checkEmpty(EMAIL)) {
			msgBox.text("이메일을 입력해 주세요");
			isSubmit.setEmailCheck(false);
			return;
		} 
		if(!emailCheck(EMAIL)) {
			msgBox.text("사용 불가능합니다");
			isSubmit.setEmailCheck(false);
		} else {
			msgBox.text("");
			isSubmit.setEmailCheck(true);
		}
	});

	$("#NICK_NAME").focusout(function() {
		const NICK_NAME = $("#NICK_NAME").val();
		const msgBox = $(this).siblings(".msg_box");
		
		if(!NICK_NAME) {
			msgBox.text("닉네임을 입력 해주세요");
			isSubmit.setNicknameCheck(false);
			return;
		}
		if(!nicknameCheck(NICK_NAME)) {
			msgBox.text("닉네임은 한글, 영어, 숫자만 4~10자리로 입력 가능합니다.");
			isSubmit.setNicknameCheck(false);
			return;
		}
		
		let data = {
			value : NICK_NAME,
			valueType : "NICK_NAME"
		};
		
		if(!overlapCheck(data)) {
			msgBox.text("이미 사용중인 닉네임입니다");
			isSubmit.setNicknameCheck(false);
		} else {
			msgBox.text("사용 가능합니다");
			isSubmit.setNicknameCheck(true);
		}
	});
	$(".btn_big").on("click", function() {
	
		
		$("#signUpForm").submit();
	})
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
		<form action="signUp" id="signUpForm" method="post">
			<div class="id">
				<div class="nm">아이디</div>
				<div class="one_line">
					<input type="text" class="box1" id="ID" name="ID" maxlength="15" placeholder="아이디를 입력해주세요"/>
					<div class="btn_check">중복</br>체크</div>
				</div>
				<div class="msg_box">${errorMsg.ID}</div>
			</div>
			<div class="email">
				<div class="nm">이메일</div>
				<div class="one_line">
					<input type="text" class="box1" id="EMAIL" name="EMAIL" placeholder="이메일을 입력해주세요"/>
					<div class="btn_check">중복</br>체크</div>
				</div>
				<div class="msg_box">${errorMsg.EMAIL}</div>
			</div>
			<div class="pw">
				<div class="nm">비밀번호</div>
				<div>
					<input type="password" class="box2" id="PASSWORD" name="PASSWORD" placeholder="비밀번호를 입력해주세요" />
				</div>
				<div class="nm">비밀번호 재확인</div>
				<div>
					<input type="password" class="box2" placeholder="비밀번호를 한번 더 입력해주세요"/>
				</div>
			</div>
			<div class="nick_name">
				<div class="nm">닉네임</div>
				<div class="one_line">
					<input type="text" class="box1" id="NICK_NAME" name="NICK_NAME" placeholder="사용할 닉네임을 입력해주세요"/>
					<div class="btn_check">중복</br>체크</div>
				</div>
					<span class="msg_box">${errorMsg.NICK_NAME}</span>
			</div>
			<div class="sign_up">
				<div class="btn_big">가입하기</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>