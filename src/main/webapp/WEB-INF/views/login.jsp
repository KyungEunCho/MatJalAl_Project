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
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<script type="text/javascript">
$(document).ready(function() {
	
	$(".login_btn").on("click", function() {
		if(checkEmpty("#loginId")) {
			makeAlert("로그인 안내", "아이디를 입력해 주세요", function() {
				$("#loginId").focus();
			});
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
	
}); //ready end



Kakao.init('e24d198715a0256d57d641e892714cdd'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
            console.log("실패");
          },
        })
      },
      fail: function (error) {
        console.log(error)
        console.log("에러");
      },
    })
  }
  
  

/* window.Kakao.init('e24d198715a0256d57d641e892714cdd');

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
} */

/* ********** naver login ********** */
/* var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "uURrKsFHbXDZ71CilxtP",
				callbackUrl: "http://localhost:8082/login",
				loginButton: {color: "green", type: 2, height: 40}
			}
		);
		
naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
	
} */


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
	<div class="join_us">
		<div class="join">회원가입</div>
			<a href="findId">
				<span class="id_pw_find">아이디 / 비밀번호 찾기</span>
			</a>
		<a class="kakao_login" href="https://kauth.kakao.com/oauth/authorize?client_id=86851554646c136ec78c91a58cf4acdd
									&redirect_uri=http://localhost:8082/login
									&response_type=code">
			<img src="/resources/image/icon-kakao.svg">
				<span>카카오 로그인</span>
		</a>
		
		
		<div class="naver_login" id="naverIdLogin_loginButton" href="javascript:void(0)">
			<img src="/resources/image/login-naver.png">
			<span>네이버 로그인</span>		
		</div>
	</div>
</div>
</body>
</html>