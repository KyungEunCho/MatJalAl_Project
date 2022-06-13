<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피드페이지</title>
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
	margin-top : 7px;
	font-size: 10pt;
}

.photo_star {
	font-size: 13pt;
	margin-top: -7px;
	margin-left: 5px;
}

.star {
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
	<div class="feed_zone">
		<div class = "feed_subzone">
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div> 
			</div>
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div>
			</div>
		</div>
		<div class = "feed_subzone">
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div>
			</div>
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div>
			</div>
		</div>
		<div class = "feed_subzone">
			<div class="feed_photo">
				<br><br><br><br><br><br><br><br><br>
				<div class="photo_name">새벽집 강남점1</div>
				<div class="photo_star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/star.png" class="star">
					<img src="resources/image/empty_star.png" class="star">
					<div class="star_grade">4.0</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>