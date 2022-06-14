<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/login.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/popup.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/cmn.css" />
<script type="text/javascript" src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
		src="resources/js/common/util.js"></script>
<script type="text/javascript" src="resources/js/common/popup.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	$(".login_btn").on("click", function() {
		if(checkEmpty("#loginId")) {
			makeAlert("로그인 안내", "아이디를 입력해 주세요", function() {
				$("#loginId").focus();
			});
			// pocus
		} else if(checkEmpty("#loginPw")) {
			makeAlert("로그인 안내", "비밀번호를 입력해 주세요", function() {
				$("#loginPw").focus();
			});
		} else {
			var params = $("#loginForm").serialize();
			
			$.ajax({
				type : "post",
				url : "loginAjax",
				dataType : "json",
				data : params,
				success : function(result) {
					if(result.res == "SUCCESS") {
						$("#loginForm").attr("action", "feed");
						$("#loginForm").submit();
					} else if(result.res == "FAILED") {
						makeAlert("로그인 실패", "아이디나 비밀번호가 틀렸습니다.");
					} else {
						makeAlert("로그인 경고", "로그인 체크 중 문제가 발생하였습니다.");
					}
				},
				error : function(request, status, error) {
					console.log("status : " + request.status);
					console.log("text : " + request.responseText);
					console.log("error : " + error);
				}
			}); // ajax end
		}
	})
	
});

window.Kakao.init('e24d198715a0256d57d641e892714cdd');

function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname, profile_image, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account)
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            console.log(error);
        }
    });
}


/* function checkEmpty(selector) {
	if($.trim($(selector).val()) == "") {
		return true;
	} else {
		return false;
	}
} */
</script>
</head>
<body>
<div class="login">
	<div class="mark_area">
		<img alt="logo_image" src="resources/image/logo.png" />
	</div>
	<div class="input">
		<form action="#" id="loginForm" method="post">
			<input type="text" class="input_id" id="loginId" name="id" placeholder="User Name" />
			<input type="password" class="input_pw" id="loginPw" name="pw" placeholder="Password" />
		</form>
	</div>
	<div class="login_btn">Login</div>
	<dlv class="join_us">
		<div class="join">회원가입</div>
		<div class="id_pw_find">아이디 / 비밀번호 찾기</div>
		<div class="kakao_login">
			<img src="/resources/image/icon-kakao.svg">
			<a href="javascript:kakaoLogin();">
				<span>카카오 로그인</span>
			</a>
		</div>
		<div class="naver_login">
			<img src="/resources/image/login-naver.png">
				<span>네이버 로그인</span>		
		</div>
	</dlv>
	
</div>
</body>
</html>