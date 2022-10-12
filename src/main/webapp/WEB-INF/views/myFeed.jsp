<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Feed</title>
<script type="text/javascript"
		src="../resources/js/jquery/jquery-1.12.4.min.js"></script>
<!-- 카카오 js -->		  
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e24d198715a0256d57d641e892714cdd&libraries=services,clusterer,drawing"></script>
<!-- 팝업 js -->
<script type="text/javascript" src="../resources/js/common/popup.js"></script>	<!-- popup end script -->

<link rel="stylesheet" href ="../resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/css/popup.css" />
<link rel="stylesheet" type="text/css" href="../resources/css/cmn.css" />
<style type="text/css">

html {
	height: 180%;
	overflow: auto;
}

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
	top : calc(30% - 25%);
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
	color: ##85898F;
	font-weight: bold;
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
	font-size: 12pt;
}

.update_btn {	
	display : inline-block;
	height: 20px;
	width: 40px;
	background-color: #ff6600b8;
	text-align: center;
	border-radius : 3px;
	color : white;
	line-height: 20px;
	cursor: pointer;
	font-size: 8pt;
	margin-left: 5px;
}

.feed_cont {
	height: 170px;
	width: auto;
	margin-left: 20px;
	margin-top: 20px;
	font-size: 12pt;
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
	width : 65px;
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
	color: #fc6902;
	font-weight: bold;
	margin-right: 5px;
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

.map_wrap {
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
	text-align: center;
	height: 33px;
	width: 82px;
	cursor: pointer;
	margin-right: 8px;
}

.newFeed {
	width: auto;
	height: auto;
	background-color: white;
	margin-left: 10px; 
}

.title_NewFeed {
	display: inline-block;
	text-align: center;
	line-height : 30px;
	width: 450px;
	height: 30px;
}

.contWrap_NewFeed {
	width: 450px;
	height: 250px;
	display: inline-block;
	border-top: 1px solid;
}

.cont_NewFeed {
	width: auto;
	height: 200px;
	position: relative;
	top : calc(50% - 35%);
	left : calc(50% - 25%);
}

.att_button {
	height : 30px;
	width: 120px;
	font-size: 9pt;
	border : 1px solid;
	border-radius : 5px;
	position: relative;
	left : calc(100% - 62%);
	cursor: pointer;
	text-align: center;
	font-size: 9pt;
	color : white;
	background-color: #ff6600b8;
	line-height: 26px;
}

td {
	display: block;
	width: auto;
	height: 25px;
}

.popup_cont {
	width: auto;
}

.popup_bg {
	height: 180%;
}

.second_newFeed {
	width: 610px;
	height: 500px;
	background-color:yellow; 
}

.second_NewFeed_title {
	display: inline-block;
	text-align: center;
	line-height : 30px;
	width: 610px;
	height: 30px;
}

.second_NewFeed_contWrap {
	width: 680px;
	height: 500px;
	display: inline-block;
	border-top: 1px solid;
	font-size: 11pt;
}

.second_newFeed_photoWrap {
	display : inline-block;
	width: 350px;
	height: 400px;
	margin-top: 10px;
}

.second_newFeed_detailWrap {
	display : inline-block;
	width: 320px;
	height: 400px;
	vertical-align : top;
	margin-top : 10px;
}

.second_newFeed_user_info {
	display : inline-block;
	width: 305px;
	height: 30px;
	margin-top: 10px;
}

.second_newFeed_profile {
	display : inline-block;
	width: 35px;
	height: 35px;
	margin-bottom: 10px;
	margin-left: 10px;
}

.second_newFeed_nick {
	display : inline-block;
	width: 250px;
	height: 25px;
	line-height: 30px;
	font-size: 12pt;
	vertical-align: top;
}

.second_newFeed_cont {
	display : block;
	margin-left: 10px;
	width: 250px;
	height: 150px;
	border: 0px solid;
}

.hashTag {
	color: blue;
	font-size: 10pt;
	display: inline-block;
	cursor: pointer;
}

.starWrap {
	margin-left : 10px;
	width: 250px;
	height: 40px;
}

.star {
	display : inline-block;
	font-size: 15pt;
	vertical-align: top;
}

.star_grade {
	vertical-align: middle;
	display: inline-block;
	color: black;
	font-weight: bold;
	font-size: 14pt;
	margin-left: 5px;
}

.second_newFeed_star_img {
	margin-right: -7px;
	margin-left: 2px;
	margin-bottom: 6px;
	vertical-align: middle;
	width: 35px;
	height: 35px;
}

.second_newFeed_search_place {
	height: 170px;
	width: 300px;
}

.share {
	height : 30px;
	width: 120px;
	font-size: 9pt;
	border : 1px solid;
	border-radius : 5px;
	cursor: pointer;
	text-align: center;
	font-size: 9pt;
	color : white;
	background-color: #ff6600b8;
	line-height: 25px;
	position: relative;
	left : calc(43%);
}

.list_btn {
   display : inline-block;
   height: 20px;
   width: 40px;
   background-color: #ff6600b8;
   text-align: center;
   border-radius : 3px;
   color : white;
   line-height: 20px;
   cursor: pointer;
   font-size: 8pt;
} 
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 1.0);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}

</style>
</head>
<script type="text/javascript">
$(document).ready(function() {
	
	$(".list_btn").on("click", function() {
	      $("#actionForm").attr("action", "feed");
	      $("#actionForm").submit();
	   });
	
	$("").on("click", function() {
		
		var html = "";
		
		html += " 		<div class = \"newFeed\">";
		html += "			<div class = \"title_NewFeed\">새 게시물 만들기</div>";
		html += "			<div class = \"contWrap_NewFeed\">";
		html += "				<table class = \"cont_NewFeed\">";
		html += "					<tbody>";
		html += "						<tr>";
		html += "							<td>1.사진 선택가능</td>";
		html += "							<td>2.문구입력 - #태그 입력</td>";
		html += "							<td>3.별점 - 클릭</td>";
		html += "							<td>4.위치 - 검색</td>";
		html += "							<td>4.공유하기 - KEEP버튼 클릭</td>";
		html += "						</tr>";
		html += "					</tbody>";
		html += "				</table>";
		html += "			</div>";
		html += "			<div class = \"att_button\">사진 선택하기</div>";
		html += "		</div>";
		
		makePopup ({
			bg:true,
			bgClose : false,
			title : "새 피드 만들기",
			width : 500,
			height: 500,
			contents :html,
			contentsEvent : function() {
				
			},
			buttons : [{
				name : "다음",
				func : function() {
					if($(".att_button").length == 0) {
						alert("사진을 선택하세요.");
						$(".att_button").focus();
					} else {
						closePopup();
					}
					
			var html = "";
					
			html += "						<div class = \"second_NewFeed_contWrap\">";
			html += "							<div class = \"second_newFeed_photoWrap\">";
			html += "								<img src = \"resources/image/noimage.jpeg\" width = \"350px\" height = \"400px\"/>";
			html += "							</div>";
			html += "							<div class = \"second_newFeed_detailWrap\">";
			html += "								<div class = \"second_newFeed_user_info\">";
			html += "								<div class = \"second_newFeed_profile\">";
			html += "									<img src = \"resources/image/noimage.jpeg\" width = \"30px\" height = \"30px\"/>";
			html += "								</div>";
			html += "									<div class = \"second_newFeed_nick\">닉네임이다</div>";
			html += "								</div>";
			
			html += "								<input type = \"text\" class = \"second_newFeed_cont\">";
			html += "								<div class = \"hashTag\">#햄버거</div>";
			html += "								<div class=\"starWrap\">";
			html += "									<div class = \"star\">";
			html += "										<img src = \"resources/image/yellowStar.png\" class = \"second_newFeed_star_img\"/>";
			html += "										<img src = \"resources/image/yellowStar.png\" class = \"second_newFeed_star_img\"/>";
			html += "										<img src = \"resources/image/yellowStar.png\" class = \"second_newFeed_star_img\"/>";
			html += "										<img src = \"resources/image/yellowStar.png\" class = \"second_newFeed_star_img\"/>";
			html += "										<img src = \"resources/image/whiteStar.png\" class = \"second_newFeed_star_img\"/>";
			html += "									</div>";
			html += "								</div>";
			html += "								<div class = \"second_newFeed_search_place\">";
			html += "								</div>";
			html += "							</div>";
			html += "						</div>";
			html += "						<div class = \"share\">공유하기</div>";
			html += "					</div> <!-- newFeed end -->";
					
					makePopup ({
						bg:true,
						bgClose : false,
						title : "피드",
						width : 700,
						height: 600,
						contents :html,
						contentsEvent : function() {
							$(".share").on("click", function() {
								closePopup();
							});
						},

					}); // popup end
				} // 상위 function end
			}, {
					name : "취소",
						func : function() {
							closePopup();
						}
					
			
			
			}] // buttons end
		}); // makePopup end
	}); // click end
}); // ready end

</script>

<form action="#" id="actionForm" method="post">
   <input type="hidden" id="feedsq" name="feedsq"/>
   <input type="hidden" id="hashTagName" name="hashTagName" />
</form>

	<div class = "cont_wrap">
		<div class = "feed_photo">
		<img src = "${data.ATT_FILE}" width = "450px" height = "350px"/>
		</div>
		<div class = "feed_right">
			<div class = "user_info">
				<div class = "profile">
					<img src = "../resources/image/profileCat.jpg" width = "30px" height="30px"/>
				</div>
				<div class = "nick">${nName}</div>
				<div class = "list_btn">목록</div>
				<div class = "update_btn">수정</div>
			</div>
			
			<div class = "feed_cont">${data.FEED_CMNT}
			<div class = "hashTag">${data.HASHTAG_NAME}</div>
			</div>
			<div class = "feed_cmnt">
				<div class = "cmnt_user_info">
					<img src = "../resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">쉑쉑버거</div>
					<div class = "cmnt_time">오늘</div>
					<div class = "cmnt_cont">하이</div>
				</div>
				<div class = "cmnt_user_info">
					<img src = "../resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">맘스터치</div>
					<div class = "cmnt_time">2일전</div>
					<div class = "cmnt_cont">하이</div>
				</div>
				<div class = "cmnt_user_info">
					<img src = "../resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
					<div class = "cmnt_nick">롯데리아</div>
					<div class = "cmnt_time">3일전</div>
					<div class = "cmnt_cont">하이</div>
				</div>
				<div class = "cmnt_user_info">
					<img src = "../resources/image/noimage.jpeg" width = "30px" height="30px" class = "feed_profile"/>
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
				<div class = "store_name">${data.STORE_NAME}</div>
				<div class = "star">
					
					<div class = "star">
		               <c:if test="${data.STAR eq 0.5}">
		                  <img src = "../resources/image/half_star.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 1.0}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 1.5}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/half_star.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 2.0}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 2.5}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/half_star.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 3.0}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 3.5}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/half_star.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 4.0}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		               </c:if>
		               <c:if test="${data.STAR eq 4.5}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/half_star.png" class = "star_img"/>
		                  
		               </c:if>
		               <c:if test="${data.STAR eq 5.0}">
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		                  <img src = "../resources/image/yellowStar.png" class = "star_img"/>
		               </c:if>
            		</div>
            <div class = "star_grade">${data.STAR}</div>
				</div>
				<div class = "adress">${data.STORE_ADRS}</div>
			</div> <!-- map_page end -->
			
			<div class = "portal_info">
				<div class = "keep_add_button">KEEP</div>
				<div class = "portal_area">
					<div id = "portal_button">
						<img src = "../resources/image/naver.png" width = "55px" height="20px" id = "naver"/>
					</div>
					<div id = "portal_button">
						<img src = "../resources/image/daum.png" width = "60px" height="32px" id = "daum"/>
					</div>
					<div id = "portal_button">
						<img src = "../resources/image/google.png" width = "55px" height="20px" id = "google"/>
					</div>
				</div>
			</div> <!-- portal_info end -->
			<div class = "map_wrap"><!-- 카카오맵 -->
			<div id = "map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			    <div id="menu_wrap" class="bg_white">
			        <div class="option">
			            <div>
			                <form onsubmit="searchPlaces(); return false;">
			                    키워드 : <input type="text" value="${data.STORE_NAME}" id="keyword" size="15">
			                    <button type="submit">검색하기</button> 
			                </form>
			            </div>
			        </div>
			        <hr>
			        <ul id="placesList"></ul>
			        <div id="pagination"></div>
			    </div>
			</div>   <!-- map_wrap end -->
			    
			    
		</div> <!-- map_page end -->

	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

			if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		        
		        var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
           		
		     	// 지도 중심좌표를 접속위치로 변경합니다
			    map.setCenter(locPosition);
		        
		    });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		    
		    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667);
			
		 	// 지도 중심좌표를 접속위치로 변경합니다
		    map.setCenter(locPosition);
		 	
		}
		
		
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();  

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});

		// 키워드로 장소를 검색합니다
		searchPlaces();
		
		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

		    var keyword = document.getElementById('keyword').value;

		    if (!keyword.replace(/^\s+|\s+$/g, '')) {
		        alert('키워드를 입력해주세요!');
		        return false;
		    }

		    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
		    ps.keywordSearch( keyword, placesSearchCB); 
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {

		        // 정상적으로 검색이 완료됐으면
		        // 검색 목록과 마커를 표출합니다
		        displayPlaces(data);

		        // 페이지 번호를 표출합니다
		        displayPagination(pagination);

		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

		        alert('검색 결과가 존재하지 않습니다.');
		        return;

		    } else if (status === kakao.maps.services.Status.ERROR) {

		        alert('검색 결과 중 오류가 발생했습니다.');
		        return;

		    }
		}
		
		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

		    var listEl = document.getElementById('placesList'), 
		    menuEl = document.getElementById('menu_wrap'),
		    fragment = document.createDocumentFragment(), 
		    bounds = new kakao.maps.LatLngBounds(), 
		    listStr = '';
		    
		    // 검색 결과 목록에 추가된 항목들을 제거합니다
		    removeAllChildNods(listEl);

		    // 지도에 표시되고 있는 마커를 제거합니다
		    removeMarker();
		    
		    for ( var i=0; i<places.length; i++ ) {

		        // 마커를 생성하고 지도에 표시합니다
		        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
		            marker = addMarker(placePosition, i), 
		            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        bounds.extend(placePosition);

		        // 마커와 검색결과 항목에 mouseover 했을때
		        // 해당 장소에 인포윈도우에 장소명을 표시합니다
		        // mouseout 했을 때는 인포윈도우를 닫습니다
		        (function(marker, title) {
		            kakao.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });

		            kakao.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });

		            itemEl.onmouseover =  function () {
		                displayInfowindow(marker, title);
		            };

		            itemEl.onmouseout =  function () {
		                infowindow.close();
		            };
		        })(marker, places[i].place_name);

		        fragment.appendChild(itemEl);
		    }
		    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
		    listEl.appendChild(fragment);
		    menuEl.scrollTop = 0;

		    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
		    map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

		    var el = document.createElement('li'),
		    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
		                '<div class="info">' +
		                '   <h5>' + places.place_name + '</h5>';

		    if (places.road_address_name) {
		        itemStr += '    <span>' + places.road_address_name + '</span>' +
		                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
		    } else {
		        itemStr += '    <span>' +  places.address_name  + '</span>'; 
		    }
		                 
		      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
		                '</div>';           

		    el.innerHTML = itemStr;
		    el.className = 'item';

		    return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
		    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
		            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });

		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

		    return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
		    var paginationEl = document.getElementById('pagination'),
		        fragment = document.createDocumentFragment(),
		        i; 

		    // 기존에 추가된 페이지번호를 삭제합니다
		    while (paginationEl.hasChildNodes()) {
		        paginationEl.removeChild (paginationEl.lastChild);
		    }

		    for (i=1; i<=pagination.last; i++) {
		        var el = document.createElement('a');
		        el.href = "#";
		        el.innerHTML = i;

		        if (i===pagination.current) {
		            el.className = 'on';
		        } else {
		            el.onclick = (function(i) {
		                return function() {
		                    pagination.gotoPage(i);
		                }
		            })(i);
		        }

		        fragment.appendChild(el);
		    }
		    paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
		    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

		    infowindow.setContent(content);
		    infowindow.open(map, marker);
		}

		 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {   
		    while (el.hasChildNodes()) {
		        el.removeChild (el.lastChild);
		    }
		}
	</script>
	

	
	
	
</body>
</html>