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

<<<<<<< HEAD
.map_api {
=======
.map_wrap {
>>>>>>> refs/heads/DH
	width: 900px;
	height: 350px;
	border: 1px solid;
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

 <!-- 부트스트랩 -->
<body>
 <!-- 
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
<<<<<<< HEAD
			<div class = "map_api">
				<img src = "resources/image/exMap.png" width = "898px" height = "348px"/>
			</div>.
=======
			<div class = "map_wrap">
			<div id = "map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
			    <div id="menu_wrap" class="bg_white">
			        <div class="option">
			            <div>
			                <form onsubmit="searchPlaces(); return false;">
			                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
			                    <button type="submit">검색하기</button> 
			                </form>
			            </div>
			        </div>
			        <hr>
			        <ul id="placesList"></ul>
			        <div id="pagination"></div>
			    </div>
			</div>   
			    
			    
>>>>>>> refs/heads/DH
		</div> <!-- map_page end -->
<<<<<<< HEAD
=======
		
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
>>>>>>> refs/heads/DH
</body>
</html>