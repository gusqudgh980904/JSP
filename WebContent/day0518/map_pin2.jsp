<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>kakaoMap_pin</title>

    <!-- bootstrap -->
    <link href="http://localhost/jsp_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">

</script>
<!-- kakao map -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1351e324e479f5b3a0e3639590eeb6ac"></script>
	<script>
$(function(){
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(37.49881817433512,127.03163647722866), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };

	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(37.49881817433512,127.03163647722866); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

	var iwContent = '<div style="padding:5px;">Hello World!<br/>서울시 강남구 한독빌딩 8층<br/>쌍용교육센터 4강의실</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(37.49881817433512,127.03163647722866); //인포윈도우 표시 위치입니다

	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	  
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(37.49881817433512,127.03163647722866); 
});//ready
	</script>
	
</head>
<body>

<div>
<div id="map" style="width:800px;height:400px;"></div>
</div>

</body>
</html>