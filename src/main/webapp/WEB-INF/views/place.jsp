<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장소페이지</title>
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
	font-weight: bold;
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

.place_zone {
	display: inline-block;
	vertical-align: top;
	width: 444px;
	height: 500px;
	color: #fc6902;
	font-size: 12px;
	margin-top: 20px;
}

.place_folder {
	display: inline-block;
	width: 130px;
	height: auto;
	color: #684107;
	font-size: 10pt;
}

.folder_name_on {
	width: 140px;
	height: 30px;
	text-align: center;
	font-weight: bold;
	background-color: #68410770;
	line-height: 30px;
}

.folder_name {
	width: 140px;
	height: 30px;
	text-align: center;
	margin-top: 10px;
	background-color: #ff770017;
	line-height: 30px;
}

.folder_name_edit {
	width: 50px;
	height: 20px;
	font-size: 8pt;
	text-align: center;
	margin-left: 80px;
	margin-top: 245px;
	background-color: #fc690270;
	line-height: 20px;
}

.place {
	position: absolute;
	display: inline-block;
	width: 284px;
	height: auto;
	margin-left: 30px;
	margin-top: -10px;
}

.place_name {
	display: inline-block;
	width: 282px;
	height: 50px;
	font-size: 12pt;
	margin-top: 10px;
	color: black;
}

.place_detail {
	margin-top: 5px;
	font-size: 10pt;
	color: black;
}

.keep {
	position: absolute;
	display: inline-block;
	margin-left: 245px;
	margin-top: -35px;
}

</style>
</head>
<body>
<div class="feed">
	<div class="title">Mat Jal Al
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
	<div class="place_zone">
		<div class = "place_folder">
			<div class="folder_name_on">카페1</div>
			<div class="folder_name">카페2</div>
			<div class="folder_name">카페3</div>
			<div class="folder_name">폴더1</div>
			<div class="folder_name">폴더2</div>
			<div class="folder_name">폴더3</div>
			<div class="folder_name_edit">edit</div>
		</div>
		<div class="place">
			<div class = "place_name">해례커피
				<div class="place_detail">서울특별시 은평구 통일로 83길 19 1층</div>
				<div class="keep">
					<img src="resources/image/keep.png" width="25px" height="25px">
				</div>
			</div>
			<div class = "place_name">해례커피
				<div class="place_detail">서울특별시 은평구</div>
			</div>
			<div class = "place_name">해례커피
				<div class="place_detail">서울특별시 은평구</div>
			</div>
			<div class = "place_name">해례커피
				<div class="place_detail">서울특별시 은평구</div>
			</div>
			<div class = "place_name">해례커피
				<div class="place_detail">서울특별시 은평구</div>
			</div>
		</div>
	</div>
	<div class="place_zone">
		<div class="place_photo">
			<img src="resources/image/place.png" width="444px" height="500px">
		</div>
	</div>
</div>
</body>
</html>