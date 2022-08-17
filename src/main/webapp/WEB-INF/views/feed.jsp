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
	background-image: url('resources/image/circle.png');
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
	width: auto;
	height: auto;
	color: #fc6902;
	font-size: 12px;
	margin-left: 70px;
	margin-top: 20px;
}

.feed_subzone {
	width: auto;
	height: auto;
}

.feed_photo {
	display: inline-block;
	width: 250px;
	height: 195px;
	background-image: url('resources/image/photo.png');
	background-size: 250px 150px;
	background-repeat: no-repeat;
}

.photo_name {
	margin-top : 150px;
	font-size: 10pt;
}

.photo_star {
	font-size: 13pt;
	margin-top: -7px;
	margin-left: 5px;
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
	color: black;
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

</style>
<script type="text/javascript" src="resources/js/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	reloadList();
	
	$(".new_feed").on("click", function() {
		
		var html = "";
		
		html += "						<div class = \"second_NewFeed_contWrap\">";
		html += "							<div class = \"second_newFeed_photoWrap\">";
		html += "			                    <input type=\"file\" name=\"file_path\" class=\"files\" style=\"width: 270px; height: 46px;\">";
		html += "                           	<img src=\"\" id=\"preview\" />";
		html += "							</div>";
		html += "							<div class = \"second_newFeed_detailWrap\">";
		html += "								<div class = \"second_newFeed_user_info\">";
		html += "									<div class = \"second_newFeed_profile\">";
		html += "										<img src = \"resources/image/noimage.jpeg\" width = \"30px\" height = \"30px\"/>";
		html += "									</div>";
		html += "									<div class = \"second_newFeed_nick\">닉네임이다</div>";
		html += "								</div>";
		html += "								<textarea placeholder=\"내용을 입력하세요.\" class = \"second_newFeed_cont\"></textarea>";
		html += "                               <div class=\"tr_hashTag_area\">                                                                                 " ;
	    html += "                                   <div class=\"form-group\">                                                                                  " ;
	    html += "                                       <input type=\"hidden\" value=\"\" name=\"tag\" id=\"rdTag\" />                                                " ;
	    html += "                                   </div>                                                                                                    " ;
	    html += "                                                                                                                                             " ;
	    html += "                                    <ul id=\"tag-list\"></ul>                                                                                  " ;
	    html += "                                                                                                                                             " ;
	    html += "                                   <div class=\"form-group\">                                                                                  " ;
	    html += "                                   	<input type=\"text\" id=\"tag\" size=\"7\" placeholder=\"엔터로 해시태그를 등록해주세요.\" style=\"width: 300px;\">	    " ;
	    html += "                                   </div>                                                                                                    " ;
		html += "                               </div>                                                                                                        " ;
		html += "								<div class=\"starWrap\">";
		html += "									<div class = \"star\">";
	    html += "                                       <div class=\"start-radio\">                                                                                       ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별0.5개</span></span>                                   ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별1개</span></span>                                     ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별1.5개</span></span>                                   ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별2개</span></span>                                     ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별2.5개</span></span>                                   ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별3개</span></span>                                     ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별3.5개</span></span>                                   ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별4개</span></span>                                     ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별4.5개</span></span>                                   ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                           <label class=\"start-radio-box\">                                                                               ";
	    html += "                                               <input type=\"radio\" name=\"star\">                                                                          ";
	    html += "                                               <span class=\"start-radio-img\"><span class=\"blind\">별5개</span></span>                                     ";
	    html += "                                           </label>                                                                                                      ";
	    html += "                                       </div>																											";
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
			title : "새 피드 만들기",
			width : 700,
			height: 600,
			contents :html,
			contentsEvent : function() { // Ajax 넣는 곳
				$('input[name="file_path"]').change(function(){
				    setImageFromFile(this, '#preview');
				});
			
				$(".share").on("click", function() {
					if($(".files").val() == "") {
						alert("사진을 선택하세요.");
					} else if($(".second_newFeed_cont").val() == "") {
						alert("내용을 입력하세요.");
						$(".second_newFeed_cont").focus();
					} else if($("[name='star']").is(":checked") == false) {
						alert("별점을 선택하세요.");
					} else {
						closePopup();
					}
				});
				
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
			    $("#tag-form").on("submit", function (e) {
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
			}
		}); // makePopup end
	}); // click end
});

function reloadList() { // 목록 조회용 + 페이징 조회용
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "feedAjax",
		dataType : "json",
		data : params,
		success : function(res) {
			console.log(res);
			drawList(res.list);
		},
		error : function(result, status, error) {
			console.log(result, responseText);
		}
	});
}

function drawList(list) {
	var html = "";
	
	for(var data of list) {
		html += "<tr no=\"" + data.FEED_NUM + "\">";
		html += "<td>" + data.FEED_NUM + "</td>";
		html += "<td>" + data.ATT_FILE + "</td>";
		html += "<td>" + data.STORE_NAME + "</td>";
		html += "<td>" + data.stars + "</td>";
		html += "</tr>";
	}

	$("tbody").html(html);
	
}

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
		<div class="feed_name">고든램지</div>
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
		<div class = "feed_subzone">
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
		</div>
		<div class = "feed_subzone">
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
		</div>
		<div class = "feed_subzone">
			<div class="feed_photo">
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/star.png" class="stars">
					<img src="resources/image/empty_star.png" class="stars">
					<div class="star_grade">4.0</div>
				</div>
			</div>
		</div>

		<form action="#" id="actionForm" method="post">
			<table class="board_table">
				<thead>
					<tr>
						<th>피드번호</th>
						<th>피드사진</th>
						<th>가게이름</th>
						<th>별점</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</form>
	</div>
</div>
</body>
</html>