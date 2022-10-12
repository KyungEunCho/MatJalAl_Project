<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드페이지</title>
<script type="text/javascript"
		src="../resources/js/jquery/jquery-1.12.4.min.js"></script>  
<script type="text/javascript" src="../resources/js/common/popup.js"></script>	<!-- popup end script -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e24d198715a0256d57d641e892714cdd&libraries=services,clusterer,drawing"></script>
<link rel="stylesheet" type="text/css" href="../resources/css/popup.css" />
<link rel="stylesheet" type="text/css" href="../resources/css/cmn.css" />
<link rel="stylesheet" type="text/css" href="../resources/css/newfeed.css" />
<style type="text/css">

.feed {
	position: absolute;
	left: calc(50% - 25%);
	display: inline-block;
	vertical-align : top;
	width: 900px;
	height: auto;
}

.title {
	display: inline-block;
	vertical-align: top;
	width: 900px;
	height: 50px;
	text-indent: 35px;
	line-height: 50px;
	font-size: 17px;
	font-weight: bold;
	color: #fc6902;
}

.new_feed {
	display: inline-block;
	vertical-align: top;
	margin-left: 650px;
	width: 120px;
	height: 30px;
	border: 2px solid #fc6902;
	text-align: left;
	font-size: 10pt;
	line-height: 30px;
	background-color: yellow;
	cursor: pointer;
}

.title_bar {
	display: inline-block;
	vertical-align: top;
	width: 900px;
	height: 3px;
	background-color: #fc6902;
}

.feed_top_bar {
	border-top: 1px solid #fc6902;
	margin-top: 10px;
}

.feed_bottom_bar {
	border-top: 1px solid #fc6902;
}

.myfeed {
	display: inline-block;
	border-right: 1px solid #fc6902;
	vertical-align: top;
	width: 450px;
	height: 25px;
	text-align: center;
	line-height: 25px;
	font-size: 12pt;
	font-weight: bold;
	color: #fc6902;
}

.myplace {
	position: absolute;
	display: inline-block;
	vertical-align: top;
	width: 450px;
	height: 25px;
	text-align: center;
	line-height: 25px;
	font-size: 12pt;
	color: #fc6902;
}

.feed_profile {
	display: inline-block;
	vertical-align: middle;
	width: 400px;
	height: 75px;
	background-image: url('resources/image/profileCat.jpg');
	background-size: 45px 45px;
	background-repeat: no-repeat;
	background-position: 340px 16px;
}

.feed_name {
	position: absolute;
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: 45px;
	font-size: 25px;
	font-weight: bold;
	line-height: 45px;
	color: #fc6902;
}

.feed_board {
	position: absolute;
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: 15px;
	font-size: 12px;
	line-height: 15px;
	margin-top: 45px;
	left: calc(44.5%);
}

.feed_board_cnt {
	position: absolute;
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: 15px;
	font-size: 12px;
	line-height: 15px;
	margin-top: 60px;
	left: calc(45.5%);
}

.feed_flwng {
	position: absolute;
	display: inline-block;
	width: 500px;
	height: 15px;
	font-size: 12px;
	line-height: 15px;
	margin-top: 45px;
	left: calc(50%);
}

.feed_flwng_cnt {
	position: absolute;
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: 15px;
	font-size: 12px;
	line-height: 15px;
	margin-top: 60px;
	left: calc(51%);
}

.feed_flwr {
	position: absolute;
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: 15px;
	font-size: 12px;
	line-height: 15px;
	margin-top: 45px;
	left: calc(55.5%);
}

.feed_flwr_cnt {
	position: absolute;
	display: inline-block;
	vertical-align: middle;
	width: 500px;
	height: 15px;
	font-size: 12px;
	line-height: 15px;
	margin-top: 60px;
	left: calc(56.5%);
}

.feed_zone {
	display: inline-block;
	vertical-align: top;
	width: 840px;
	height: 500px;
	color: #fc6902;
	font-size: 12px;
	margin-left: 50px;
	margin-top: 20px;
	overflow : hidden auto;
}

.feed_subzone {
	width: auto;
	height: auto;
}

.feed_photo {
	display: inline-block;
	width: 250px;
	height: 195px;
	background-size: 250px 150px;
	background-repeat: no-repeat;
	margin-right: 30px;
}

.photo_name {
	font-size: 10pt;
}

.photo_star {
	font-size: 13pt;
	margin-top: -3px;
	/* margin-left: 5px; */
}

.stars {
	margin-top: 5px;
	margin-left: -5px;
	width: 20px;
	height: 20px;
}
.star_grade {
	vertical-align: top;
	display: inline-block;
	margin-top: 3px;
	color: #fc6902;
	font-weight: bold;	
}
.att_button {
	display: block;
}

.files {
	vertical-align: top;
}

.second_newFeed_photoWrap {
	width: 300px;
	height: 300px;
}

#preview {
	margin-top: 50px;
	width: 100%;
	height: auto;
}

.tr_hashTag_area {
	margin-left: 10px;
	margin-bottom: 15px;
}

#tag-list {
	display: inline-block;
	padding-left: 0px; 
}

.tag-item {
	display: inline-block;
	margin-right: 15px;
	font-size: 10pt;
	color: blue;
}

.del-btn {
	margin-left: 2px;
	font-size: 7px;
	color: black;
}

.blind {
    position: absolute;
    overflow: hidden;
    margin: -1px;
    padding: 0;
    width: 50px;
    height: 50px;
    border: none;
    clip: rect(0, 0, 0, 0);
}

.start-radio {
    display: inline-block;
    overflow: hidden;
    height: 40px;
}
.start-radio::after {
    display: block;
    content: '';
    position: relative;
    z-index: 10;
    height: 40px;
    background-image: url('data:image/png;base64,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');
    background-position: 0 0;
    background-repeat: repeat-x;
    background-size: contain;
    pointer-events: none;
}

.start-radio-box {
    position: relative;
    z-index: 1;
    float: left;
    width: 20px;
    height: 40px;
    cursor: pointer;
}
input[type="radio"] {
    opacity: 0;
    width: 0;
    height: 0;
    position: absolute;
}
input[type="radio"]:checked + .start-radio-img {
    background-color: #fad21a;
}
.start-radio-img {
    display: block;
    position: absolute;
    right: 0;
    width: 500px;
    height: 40px;
    border: 0px solid #ff6600b8;
    pointer-events: none;
}

.feed_num {
   display: inline-block;
}

.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:300px; height:220px; margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 1.0);z-index: 1;font-size:12px;border-radius: 10px;}
#keyword {height: 18px;}
.bg_white {background:#fff; margin-top: 20px; width: 310px;}
#menu_wrap hr {display: block; height: 1px; width: 310px; border: 0; border-top: 2px solid #5F5F5F;margin:5px 0; margin-left: 3px; }
#menu_wrap .option{margin-left: 8px;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:0px; border: 0px solid #ff6600b8; background-color: white; cursor: pointer; vertical-align: top;}
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
<script type="text/javascript" src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	reloadList();
	
	
	$(".new_feed").on("click", function() {
		
		var html = "";
		
		
		html += "		<form action = \"#\" id = \"addForm\" method = \"post\">";
	    html += "                    <input type=\"hidden\" id=\"attFile\" name=\"attFile\" />";
	    html += "                    <input type=\"hidden\" id=\"stars\" name=\"stars\" />";
		
		html += "						<div class = \"second_NewFeed_contWrap\">";
		html += "							<div class = \"second_newFeed_photoWrap\">";
		html += "			                    <input type=\"file\" id=\"singleFileUploadInput\" name=\"file_path\" class=\"files\" style=\"width: 270px; height: 46px;\">";
		html += "                           		<img src=\"\" id=\"preview\" name =\"preview\"/>";
		html += "								</div>";
		html += "							<div class = \"second_newFeed_detailWrap\">";
		html += "								<div class = \"second_newFeed_user_info\">";
		html += "									<div class = \"second_newFeed_profile\">";
		html += "										<img src = \"resources/image/profileCat.jpg\" width = \"30px\" height = \"30px\"/>";
		html += "									</div>";
		html += "									<div class = \"second_newFeed_nick\">${nName}</div>";
		html += "								</div>";
		html += "								<textarea placeholder=\"내용을 입력하세요.\" id = \"second_newFeed_cont\" name = \"second_newFeed_cont\" class = \"second_newFeed_cont\"></textarea>";
		html += "                               <div class=\"tr_hashTag_area\">";
	    html += "                                   <div class=\"form-group\">";
	    html += "                                       <input type=\"hidden\" value=\"\" name=\"tag\" id=\"rdTag\" />";
	    html += "                                   </div>";
	    
	    html += "                                    <ul id=\"tag-list\" name = \"tag-list\"></ul>";
	    
	    html += "                                   <div class=\"form-group\">";
	    html += "                                   	<input type=\"text\" id=\"tag\" size=\"7\" placeholder=\"엔터로 해시태그를 등록해주세요.\" style=\"width: 300px;\">";
	    html += "                                   </div>";
		html += "                               </div>";
		html += "                        <div class=\"starWrap\">";
	    html += "                           <div class = \"star\">";
	    html += "                                       <div class=\"start-radio\" id = \"star2\">";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"half\" name=\"star\" id=\"star\" value=\"0.5\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별0.5개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"one\" name=\"star\" id=\"star\" value=\"1.0\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별1개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"one-half\" name=\"star\" id=\"star\" value=\"1.5\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별1.5개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"two\" name=\"star\" id=\"star\" value=\"2.0\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별2개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"two-half\" name=\"star\" id=\"star\" value=\"2.5\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별2.5개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"three\" name=\"star\" id=\"star\" value=\"3.0\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별3개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"three-half\" name=\"star\" id=\"star\" value=\"3.5\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별3.5개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"four\" name=\"star\" id=\"star\" value=\"4.0\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별4개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"four-half\" name=\"star\" id=\"star\" value=\"4.5\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별4.5개</span></span>";
	    html += "                                           </label>";
	    html += "                                           <label class=\"start-radio-box\">";
	    html += "                                               <input type=\"radio\" class=\"five\" name=\"star\" id=\"star\" value=\"5.0\">";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별5개</span></span>";
	    html += "                                           </label>";
	    html += "                                       </div>";
	    html += "                           </div>";
      	html += "                        </div>";
		
		
		
		html += "								<div class = \"second_newFeed_search_place\">";
	    html += "                                  <div class = \"map_wrap\"><!-- 카카오맵 -->";
	    html += "                                  	<div id = \"map\" style=\"overflow:hidden;\"></div>";
		html += "								    <div id=\"menu_wrap\" class=\"bg_white\">";
		html += "								        <div class=\"option\">";
		html += "								            <div>";
		html += "								                <form onsubmit=\"searchPlaces(); return false;\">";
		html += "								                    <input type=\"text\" value=\"이태원\" id=\"keyword\" name= \"keyword\" size=\"32\">";
		html += "                                              		<input type=\"hidden\" value=\"\" id=\"s_adrs\" name=\"s_adrs\">"; 
		html += "								                    <input type=\"button\" id= \"search\"value = \"검색하기\">";
		html += "								                </form>";
		html += "								            </div>";
		html += "								        </div>";
		html += "								        <hr>";
		html += "								        <ul id=\"placesList\"></ul>";
		html += "								        <div id=\"pagination\"></div>";
		html += "							    	</div>";
		html += "							    	</div>";
		html += "								</div>";
		html += "							</div>";
		html += "						</div>";
		html += "						<div class = \"share\">공유하기</div>";
		html += "					</div> <!-- newFeed end -->";
		html += " 		</form>";
		
		makePopup ({
			bg:true,
			bgClose : false,
			title : "새 피드 만들기",
			width : 700,
			height: 650,
			contents :html,
			contentsEvent : function() { // Ajax 넣는 곳
				
				$('input[name="file_path"]').change(function(){
				    setImageFromFile(this, '#preview');
				
				    
				$("#attFile").val($("#preview").attr("src"));
				    console.log($("#attFile").val());
				});
			
			
				$("#star2").on("click",function() {
		               $("#stars").val($("#star:checked").val());
		        });
				
				// 별
		  		$(".start-radio-box").on("click", "#half", function() {
	                  console.log($("#half").val());
	            }); 
		  	         
		  		$(".start-radio-box").on("click","#one", function() {      
	                  console.log($("#one").val());
	            });   
	                  
		  		$(".start-radio-box").on("click","#one-half", function() {      
	                  console.log($("#one-half").val());
	            });   
		  		
		  		$(".start-radio-box").on("click","#two", function() {      
	                  console.log($("#two").val());
	            });   
		  		
		  		$(".start-radio-box").on("click","#two-half", function() {      
	                  console.log($("#two-half").val());
	            });
			  		
		
		  		'use strict';

	            var singleUploadForm = document.querySelector('#singleUploadForm');
	            var singleFileUploadInput = document.querySelector('#singleFileUploadInput');
	            var singleFileUploadError = document.querySelector('#singleFileUploadError');
	            var singleFileUploadSuccess = document.querySelector('#singleFileUploadSuccess');
	             
	            function uploadSingleFile(file) {
	                var formData = new FormData();
	                formData.append("file", file);

	                var xhr = new XMLHttpRequest();
	                xhr.open("POST", "uploadFile", true);
	                

	                xhr.onload = function() {
	                    var response = JSON.parse(xhr.responseText);

	                    if(xhr.status == 200) {
	                        singleFileUploadError.style.display = "none";
	                        singleFileUploadSuccess.innerHTML = "<p>File Uploaded Successfully.</p><p>DownloadUrl : <a href='" + response.fileDownloadUri + "' target='_blank'>" + response.fileDownloadUri + "</a></p>";
	                        singleFileUploadSuccess.style.display = "block";
	                    } else {
	                        singleFileUploadSuccess.style.display = "none";
	                        singleFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
	                    }
	                }
	                xhr.send(formData);
	            }
		  		
		
				$(".share").on("click", function() {
			        var value = marginTag(); // return array
			        $("#rdTag").val(value);
			        console.log($("#rdTag").val());
			        
					if($(".files").val() == "") {
						alert("사진을 선택하세요.");
					} else if($(".second_newFeed_cont").val() == "") {
						alert("내용을 입력하세요.");
						$(".second_newFeed_cont").focus();
					} else if($("[name='star']").is(":checked") == false) {
						alert("별점을 선택하세요.");
					} else if ($("#keyword").val() == "") {
						alert("장소를 선택하세요.");
					} else {
						
						var files = singleFileUploadInput.files;
		                   uploadSingleFile(files[0]);
		                   event.preventDefault();
		                   
		                   //attFile에 업로드된 주소 담기
		                  $("#attFile").val("/downloadFile/" + $("#singleFileUploadInput").val().substring(12));
						
						
						var params = $("#addForm").serialize();
						
						$.ajax ({
							type : "post",
							url : "addFeedAjax",
							dataType : "json",
							data : params,
							success : function(res) {
								if(res.res == "success") {
									closePopup();
									reloadList();
								} else {
									alert("생성중 문제가 발생하였습니다.");
								}
							},
							error : function(request, status, error) {
								console.log(request.responseText);
							}
						}); 
						 
					}
				});
				
				// hashtag
				var tag = {};
			    var counter = 0;

			    // 입력한 값을 태그로 생성한다.
			    function addTag (value) {
			        tag[counter] = value;
			        counter++; // del-btn 의 고유 id 가 된다.
			    }

			    // tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
			    function marginTag () {
			        return Object.values(tag).filter(function (word) {
			            return word !== "";
			        });
			    }
			 
			    // 서버에 제공
			    $("#addForm").on("submit", function (e) {
			        var value = marginTag(); // return array
			        $("#rdTag").val(value); 

			        $(this).submit();
			    });

			    $("#tag").on("keypress", function (e) {
			        var self = $(this);

			        //엔터나 스페이스바 눌렀을때 실행
			        if (e.key == "Enter" || e.keyCode == 32) {

			            var tagValue = self.val(); // 값 가져오기

			            // 해시태그 값 없으면 실행X
			            if (tagValue !== "" && tagValue.substr(0,1) == "#") {

			                // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
			                var result = Object.values(tag).filter(function (word) {
			                    return word == tagValue;
			                })
			            
			                // 해시태그가 중복되었는지 확인
			                if (result.length == 0) { 
			                    $("#tag-list").append("<li class='tag-item'>"+tagValue+"<span class='del-btn' idx='"+counter+"'>x</span></li>");
			                    addTag(tagValue);
			                    self.val("");
			                } else {
			                    alert("태그값이 중복됩니다.");
			                }
			            } else if(tagValue == "") {
			           	 alert("문구를 입력하세요.");
			            } else {
			           	 alert("#을 입력하세요.");
			            }
			            e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
			        }
			    });

			    // 삭제 버튼 
			    // 인덱스 검사 후 삭제
			    $(document).on("click", ".del-btn", function (e) {
			        var index = $(this).attr("idx");
			        tag[index] = "";
			        $(this).parent().remove();
			    });
				
			    $("#search").on("click", function() {
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
	                               displayInfowindow(marker, title, places);
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
	                               '   <h5 class = "s_title">' + places.place_name + '</h5>';

	                   if (places.road_address_name) {
	                       itemStr += '    <span class="address">' + places.road_address_name + '</span>' +
	                                   '   <span class="jibun gray">' +  places.address_name  + '</span>';
	                   } else {
	                       itemStr += '    <span class="address">' +  places.address_name  + '</span>'; 
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
	               function displayInfowindow(marker, title, places) {
	                  
	                  // var addr = '<div>도로명주소 : ' + places.address_name + '</div>' ;
	               
	                  var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
	   
	                  infowindow.setContent(content);
	                  infowindow.open(map, marker);
	                  
	                  $(document).on("click", ".address" ,function(){
	                     $("#keyword").val(title);
	                     var a = $(this).text();
	                     $("#s_adrs").val(a);
	                     console.log(a);
	                  });
	                  
	                  
	                  $(document).on("click", ".s_title" ,function(){
		                     $("#keyword").val(title);
		                  });
	               }

	                // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	               function removeAllChildNods(el) {   
	                   while (el.hasChildNodes()) {
	                       el.removeChild (el.lastChild);
	                   }
	               }
	            }); // search click end
			    
	            
	            
			} // function end
		}); // makePopup end
	}); // click end
	
	$(".feed_zone").on("click", "div" ,function() {
		$("#feedsq").val($(this).attr("no"));
		
		
	 	$("#actionForm").attr("action", "myFeed");
		$("#actionForm").submit(); 
	});
	
});

function reloadList() { // 목록 조회용 + 페이징 조회용
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "feedAjax",
		dataType : "json",
		data : params,
		success : function(res) {
			console.log("피드아작스" + params)
			console.log(res);
			drawList(res.list);
		},
		error : function(result, status, error) {
			console.log(result);
		}
	});
}

/* function drawList(list) {
	var html = "";
	
	for(var data of list) {
		html += "<tr no=\"" + data.FEED_NUM + "\">";
		html += "<td>" + data.FEED_NUM + "</td>";
		html += "<td>" + data.ATT_FILE + "</td>";
		html += "<td>" + data.STORE_NAME + "</td>";
		html += "<td>" + data.STAR + "</td>";
		html += "</tr>";
	}

	$(".feed_zone").html(html);
	
} */


function drawList(list) {
	   var html = "";
	   
	   for(var data of list) {
	      html += "<div class=\"feed_num\" no= \""+ data.FEED_NUM + "\">";
	      html += "  <div class=\"feed_photo\">" + "<img src = \"" + data.ATT_FILE + "\" + width=\"250\" height=\"150\">";
	      html += "    <div class=\"photo_name\">" + data.STORE_NAME + "</div>";
	      html += "    <div class=\"photo_star\">";
	      
	       if(data.STAR == 0.5) {
	    	   html  += "<img src = \"../resources/image/half_star.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 1.0) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       }  else if(data.STAR == 1.5) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/half_star.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 2.0) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 2.5) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/half_star.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 3.0) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 3.5) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/half_star.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 4.0) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 4.5) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/half_star.png" + "\" + width=\"25\" height=\"25\">";
	    	   
	       } else if(data.STAR == 5.0) {
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	    	   html  += "<img src = \"../resources/image/yellowStar.png" + "\" + width=\"25\" height=\"25\">";
	       } 
	       
	      html += "       <div class=\"star_grade\"> " + data.STAR + "</div>";
	      html += "    </div>";
	      html += "  </div>";
	      html += "</div>";
	   }

	   $(".feed_zone").html(html);
	}
/* if(data.CONT != null) {
	html += "			<input type=\"text\" value = \"" + data.CONT + "\" id = \"chat_view\" readonly=\"readonly\" style = \"width:150px; color: #85898F\"/>";    
} else {
	html += "			<input type=\"text\" value = \"대화가 없습니다.\" id = \"chat_view\" readonly=\"readonly\" style = \"width:150px; color: #85898F\"/>";
} */


function setImageFromFile(input, expression) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
    $(expression).attr('src', e.target.result);
  }
  reader.readAsDataURL(input.files[0]);
  }
}


</script>
</head>
<body>
<div class="feed">
	<div class="title">Mat Jal Al
		<div class="new_feed">피드생성</div>
		<div class="title_bar"></div>
	</div>
	<div class="feed_detail">
		<div class="feed_profile"></div>
		<div class="feed_name"> ${nName}</div>
		<div class="feed_board">게시물</div>
		<div class="feed_board_cnt">123</div>
		<div class="feed_flwng">팔로잉</div>
		<div class="feed_flwng_cnt">145</div>
		<div class="feed_flwr">팔로워</div>
		<div class="feed_flwr_cnt">789</div>
	</div>
	<div class="feed_select">
		<div class="feed_top_bar"></div>
		<div class="myfeed">내 피드</div>
		<div class="myplace">내 장소</div>
		<div class="feed_bottom_bar"></div>
	</div>
	<div class="feed_zone">

	</div>
	
	<form action = "#" id = "actionForm" method = "post">
		<input type="hidden" id="feedsq" name="feedsq" />
	</form>    
	
</div>
</body>
</html>