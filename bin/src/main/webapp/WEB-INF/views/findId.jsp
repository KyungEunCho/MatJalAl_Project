<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="resources/css/find.css"/>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="text/javascript"
		src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#vcode").on("click", function() {
		if($("#find_email").val() != '') {
			a.style.display = "block";	
			c.style.display = "";
		} else {
			c.style.display = "block";
			a.style.display = "";
		}
	});
	
	$("#vcode2").on("click", function() {
		if($("#find_num").val() != '') {
			Swal.fire({
				  position: 'center',
				  icon: 'success',
				  title: '인증번호 확인 완료',
				  showConfirmButton: true,
				  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
			});
			searchBox.style.display = "block";
		} else {
			b.style.display = "block";
		}
	});
});
</script>
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
                <h4>이메일</h4>
            </li>
            <div class="box">
                <input type="text" id="find_email" name="find_email" placeholder="abc@mja.co.kr">
                <input type="button" id="vcode" name="vcode" value="인증번호 받기">
                <div id="a">인증번호가 전송되었습니다.</div>
                <div id="c">이메일을 입력해주세요.</div>
            </div>
            <div class="box">
                <input type="text" id="find_num" name="find_num">
                <input type="button" id="vcode2" name="vcode2" value="인증번호 확인">
                <div id="b">인증번호를 입력해주세요.</div>
            </div>
            <br>
            <br>
            <br>
           <div id="searchBox">
	            <li class="con">
	                <h4>검색된 아이디</h4>
	            </li>
	            <div class="box1">
	            	<div class="box2">
		            	<input type="radio" id="check_id" name="check_id" />
		            	<label for="check_id">checkbox</label>
	            	</div>
	            </div>
            </div>
        </div>
    </div>
</body>
</html>