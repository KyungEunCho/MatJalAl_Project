<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e24d198715a0256d57d641e892714cdd&libraries=services,clusterer,drawing"></script>
<link rel="stylesheet"
	  href ="/resources/css/bootstrap.min.css">
<style type="text/css">

.cont_wrap {
	width: 900px;
	height: 500px;
	position : absolute;
	top : calc(50% - 300px);
	left : calc(20% - 0%);
}

.feed_photo {
	display : inline-block;
	height : 450px;
	width : 450px;
	position: absolute;
	top : calc(25% - 25%);
	left : calc(40% - 360px);
}

.feed_right {
	height : 450px;
	width : 450px;
	position: absolute;
	top : calc(25% - 25%);
	left : calc(50% - 0px);
}

.user_info {
	display: block;
	height: 35px;
	width: auto;
}

.profile {
	display: inline-block;
	height: 30px;
	width: 30px;
	margin-left: 20px;
	margin-top: 20px;
}

.nick {
	display: inline-block;
	height: 30px;
	width: 300px;
	margin-left: 10px; 
}

.update_btn {	
	display : inline-block;
	height: 15px;
	width: 40px;
	background-color: #ff6600b8;
	text-align: center;
	border-radius : 3px;
	color : white;
	line-height: 15px;
	cursor: pointer;
	font-size: 1pt;
	margin-left: 30px;
}

.feed_cont {
	height: 170px;
	width: auto;
	margin-left: 20px;
	margin-top: 20px;
}

.hashTag {
	color: blue;
	font-size: 10pt;
	display: inline-block;
	cursor: pointer;
}

.feed_cmnt {
	margin-top: 10px;
	margin-left: 20px;
	height: 150px;
	width : auto;
	vertical-align: middle;
}

.cmnt_user_info {
	height: 25px;
	width: auto;
	margin-top: 10px;
	margin-bottom: 10px;
}

.cmnt_nick {
	display : inline-block;
	height: 20px;
	width: auto;
	margin-left: 5px;
	font-size: 11pt;
}

.cmnt_time {
	display : inline-block;
	height: 10px;
	width: auto;
	margin-left: 2px;
	font-size: 5pt;
	color: #85898F;
}

.cmnt_cont {
	display :inline-block;
	height: 20px;
	width: auto;
	vertical-align : middle;
	font-size: 9pt;
	margin-left: 10px;
}

.feed_profile {
	display: inline-block;
}

.keep {
	width : 60px;
	font-weight: bold;
	font-size: 8pt;
	margin-left: 20px;
	margin-top : 5px;
	cursor: pointer;
}

.cmnt_add {
	margin-top : 10px;
	height: 60px;
	width: 400px;
}

.cmnt_text_box {
	margin-left: 19px;
	margin-top: 5px;
	font-size: 9pt;
	width: 390px;
	height : 30px;
	border-radius: 5px;
	text-indent: 3pt;
	background-color: #ff770017;
}

.cmnt_text_box input:focus {
	outline: none;
}

.cmnt_add_button {
	height : 30px;
	width: 40px;
	font-size: 9pt;
	border : 1px solid;
	border-radius : 5px;
	position: relative;
	top : calc(25% - 45px);
	left : calc(110% - 28px);
	cursor: pointer;
	text-align: center;
	font-size: 9pt;
	color : white;
	background-color: #ff6600b8;
	line-height: 25px;
}

.map_page {
	display : inline-block;
	height: 500px;
	width: 900px;
	position : absolute;
	top : calc(85% - 30px);
	left : calc(20% - 0px);
}

.place_info {
	display : inline-block;
	height : 120px;
	width: 445px;
	padding-left: 10px;
	padding-top: 10px;
}

.portal_info {
	vertical-align : top;
	display : inline-block;
	height : 120px;
	width: 445px;
	padding-top: 10px;
}

.store_name {
	display : inline-block;
	font-size: 15pt;
}

.star {
	display : inline-block;
	font-size: 15pt;
	vertical-align: top;
}

.star_img {
	margin-right: -7px;
	margin-left: 2px;
	margin-bottom: 6px;
	vertical-align: middle;
	width: 20px;
	height: 20px;
}

.adress {
	margin-top: 45px;
	height: 30px;
	width: auto;
	font-size: 12pt;
}

#map {
	width: 900px;
	height: 350px;
}

.keep_add_button {
	height : 30px;
	width: 60px;
	font-size: 9pt;
	border : 1px solid;
	border-radius : 5px;
	position: relative;
	top : calc(30% - 25px);
	left : calc(90% - 15px);
	cursor: pointer;
	text-align: center;
	font-size: 9pt;
	color : white;
	background-color: #ff6600b8;
	line-height: 25px; 
}

.portal_area {
	height: auto;
	width: 300px;
	font-size: 9pt;
	text-align: right;
	position: relative;
	top : calc(45% - 5px);
	left : calc(35% - 11px);
}

#portal_button {
	display : inline-block;
/*	height: 30px;
	width: 80px;
	background-color: #ff6600b8;
	text-align: center;
	border-radius : 5px;
	color : white;
	line-height: 30px;
	cursor: pointer; */
	text-align: center;
	height: 33px;
	width: 82px;
	cursor: pointer;
	margin-right: 8px;
}
</style>
</head>

 <!-- 부트스트랩 -->
<!-- <body>
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
	  	 <img src="resources/image/logo_orange.png" width="30" height="40" style="margin-right: 10px;">
	  <a class="navbar-brand" href="#" style="color: orange;">Mat Jal Al</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation" style="border-color:orange;">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Link</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0" >
	      <input class="form-control mr-sm-2" type="search" placeholder="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"  style="color: orange;">Search</button>
	    </form>
	  </div>
	</nav>
 -->


	<div class = "cont_wrap">
		<div class = "feed_photo">
		<img src = "resources/image/mcdonald.png" width = "450px" height = "450px"/>
		</div>
		<div class = "feed_right">
			<div class = "user_info">
				<div class = "profile">
					<img src = "resources/image/noimage.jpeg" width = "30px" height="30px"/>
				</div>
				<div class = "nick">this is nickname</div>
				<div class = "update_btn">수정</div>
			</div>
			<div class = "feed_cont">안녕
			<div class = "hashTag">#맥도날드</div>
			</div>
			<div class = "feed_cmnt">
				<div class = "cmnt_user_info">
					<img src = "resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">쉑쉑버거</div>
					<div class = "cmnt_time">오늘</div>
					<div class = "cmnt_cont">하이</div>
				</div>
				<div class = "cmnt_user_info">
					<img src = "resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">맘스터치</div>
					<div class = "cmnt_time">2일전</div>
					<div class = "cmnt_cont">하이</div>
				</div>
				<div class = "cmnt_user_info">
					<img src = "resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">롯데리아</div>
					<div class = "cmnt_time">3일전</div>
					<div class = "cmnt_cont">하이</div>
				</div>
				<div class = "cmnt_user_info">
					<img src = "resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">버거킹</div>
					<div class = "cmnt_time">일주일전</div>
					<div class = "cmnt_cont">하이</div>
				</div>
			</div> <!-- feed_cmnt end -->
			<div class = "keep">KEEP 100개</div>
			<div class = "cmnt_add">
				<input type="text" placeholder = "댓글달기.." class = "cmnt_text_box"/>
				<div class="cmnt_add_button">Send</div>
			</div>
		</div> <!-- feed_right end -->
	</div> <!-- cont_wrap end -->
	
		<div class = "map_page">
			<div class = "place_info">
				<div class = "store_name">맥도날드</div>
				<div class = "star">
					<img src = "resources/image/yellowStar.png" class = "star_img"/>
					<img src = "resources/image/yellowStar.png" class = "star_img"/>
					<img src = "resources/image/yellowStar.png" class = "star_img"/>
					<img src = "resources/image/yellowStar.png" class = "star_img"/>
					<img src = "resources/image/whiteStar.png" class = "star_img"/>
				</div>
				<div class = "adress">서울 금천구 벚꽃로 298 대륭포스트6차 1층</div>
			</div> <!-- map_page end -->
			
			<div class = "portal_info">
				<div class = "keep_add_button">KEEP</div>
				<div class = "portal_area">
					<div id = "portal_button">
						<img src = "resources/image/naver.png" width = "55px" height="20px"/>
					</div>
					<div id = "portal_button">
						<img src = "resources/image/daum.png" width = "60px" height="32px"/>
					</div>
					<div id = "portal_button">
						<img src = "resources/image/google.png" width = "55px" height="20px"/>
					</div>
				</div>
			</div> <!-- portal_info end -->
			<div id = "map">
			</div>
		</div> <!-- map_page end -->
		
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(33.450701, 126.570667),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
		</script>
</body>
</html>