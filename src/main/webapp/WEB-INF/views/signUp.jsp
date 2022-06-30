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
<!-- <script type="text/javascript" src="resources/js/signUp.js"></script> -->
<script type="text/javascript">
$(document).ready(function() {
	
	// 아이디 중복체크
	$(".id_check").on("click", function() {
		checkId();
	});
	
	$(".btn_big").on("click", function() {
		
		if(checkEmpty("#password")) {
			Swal.fire({
				  title: '비밀번호를 입력해주세요.',
				  showConfirmButton: true,
				  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
			});
			$("#password").focus();
		} else if(checkEmpty("#nickname")) {
			Swal.fire({
				  title: '닉네임을 입력해주세요.',
				  showConfirmButton: true,
				  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
			});
			$("#nickname").focus();
		} else if(checkEmpty("#email")) {
			Swal.fire({
				  title: '이메일을 입력해주세요.',
				  showConfirmButton: true,
				  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
			});
			$("#email").focus();
		} else {
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
function checkId(){
    var id = $('#id').val(); //id값이 "id"인 입력란의 값을 저장
    $.ajax({
        url:'/idCheck', //Controller에서 인식할 주소
        type:'post', //POST 방식으로 전달
        data:{id:id},
        success:function(cnt){
            if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
            	if(!checkEmpty("#id")) {
	                $('.id_ok').css("display","inline-block"); 
	                $('.id_already').css("display", "none");            		
            	} else {
        			Swal.fire({
      				  title: '아이디를 입력해주세요.',
      				  showConfirmButton: true,
      				  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
      				});
            		$('.id_ok').css("display", "none");
            		$('.id_already').css("display", "none");
            	}
            } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                $('.id_already').css("display","inline-block");
                $('.id_ok').css("display", "none");
            }
        },
        error:function(){
            alert("에러입니다");
        }
    });
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
		<form action="sign" id="signUpForm" method="post">
			<div class="box_id">
				<div class="nm">아이디</div>
				<div class="one_line">
					<input type="text" class="box1" id="id" name="id" maxlength="15" placeholder="아이디를 입력해주세요"/>
					<div class="id_check">중복</br>체크</div>
				</div>
					<div class="id_ok">사용할 수 있는 아이디입니다.</div>
					<div class="id_already">중복된 아이디가 있습니다.</div>
				 <div class="msg_box">${errorMsg.id}</div>
			</div>
			<div class="box_email">
				<div class="nm">이메일</div>
				<div class="one_line">
					<input type="text" class="box1" id="email" name="email" placeholder="이메일을 입력해주세요"/>
					<div class="btn_check">중복</br>체크</div>
				</div>
				<div class="msg_box">${errorMsg.email}</div>
			</div>
			<div class="box_pw">
				<div class="nm">비밀번호</div>
				<div>
					<input type="password" class="box2" id="password" name="password" placeholder="비밀번호를 입력해주세요" />
				</div>
				<div class="nm">비밀번호 재확인</div>
				<div>
					<input type="password" class="box2" placeholder="비밀번호를 한번 더 입력해주세요"/>
				</div>
			</div>
			<div class="box_nick_name">
				<div class="nm">닉네임</div>
				<div class="one_line">
					<input type="text" class="box1" id="nickname" name="nickname" placeholder="사용할 닉네임을 입력해주세요"/>
					<div class="btn_check">중복</br>체크</div>
				</div>
				 <span class="msg_box">${errorMsg.nickname}</span>
			</div>
			<div class="sign_up">
				<div class="btn_big">가입하기</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>