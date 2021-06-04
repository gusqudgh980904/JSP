<%@page import="kr.co.sist.vo.CarVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

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
</head>
<body>
<div>
<!-- 인덱스를 사용하는 forEach -->
<select>
<option>----점수선택----</option>
<c:forEach var="i" begin="0" end="100" step="1">
	<option value="${i}"><c:out value="${i}"/></option>

</c:forEach>
</select>

<!-- 배열을 사용하는 forEach -->
<%
String[] subjects={"Java SE","Oracle DBMS","JDBC","HTML","CSS","JavaScript"};
//변수를 EL에서 사용할 수 없으므로 .scope객체에 넣는다
request.setAttribute("data",subjects);
%>
<ul>
	<c:forEach var="subject" items="${data}">
	<c:set var="i" value="${i+1}"></c:set><!--인덱스를 보여주기 위한 변수 초기화가됨  -->
		<li><c:out value="${i}"></c:out>.<c:out value="${subject}"></c:out></li>

	</c:forEach>
</ul>
<%
List<String> list=new ArrayList();
list.add("이중구.jpg");
list.add("톰하디.jpg");
list.add("포챠코1.jpg");
list.add("포챠코2.jpg");
list.add("포챠코3.jpg");
request.setAttribute("imgList",list);//EL에서 변수를 사용하기 위해 scope객체에 설정한다
%>
<div>
<div class="row">

<c:forEach var="img" items="${imgList}">
<div class="col-xs-6 col-md-3">
	<a href="#" class="thumbnail">
<img src="../common/images/${img}" style="width:242px;height:200px"/>
	</a>
</div>
</c:forEach>
</div>
</div>

<div>
<%
List<CarVO> listCar=new ArrayList<CarVO>();
listCar.add(new CarVO("그랜저","ABS,TCS,파노라마썬루프","2021","01.jpg",4500,3300));
listCar.add(new CarVO("M5","ABS,TCS,파워스티어링","2020","02.jpg",9500,4500));
listCar.add(new CarVO("소나타","ABS,TCS,파노라마썬루프","2049","03.jpg",4500,1200));
listCar.add(new CarVO("그랜저","ABS,TCS,파노라마썬루프","2021","318i.jpg",8500,3300));

request.setAttribute("carData",listCar);
%>
<table class="table" style="text-align:center;">
	<tr >
		<th style="width:40px">번호</th>
		<th style="width:100px">이미지</th>
		<th style="width:120px">모델명</th>
		<th style="width:330px">옵션</th>
		<th style="width:80px">연식</th>
		<th style="width:80px">가격</th>
		<th style="width:60px">배기량</th>
	</tr>
	<c:remove var="i"/>
	
<c:forEach var="carVO" items="${carData}">
<c:set var="i" value="${i+1}"/>
<tr>
	<td style="text-align:center"><c:out value="${i}"/></td>
	<td><img src="http://localhost/jsp_prj/car_img/${carVO.car_img}" style="width:95px"/></td>
	<td style="text-align:center"><c:out value="${carVO.model}"/></td>
	<td style="text-align:center"><c:out value="${carVO.car_option}"/></td>
	<td style="text-align:center"><c:out value="${carVO.car_year}"/></td>
	<td style="text-align:center"><c:out value="${carVO.price}"/></td>
	<td style="text-align:center"><c:out value="${carVO.cc}"/></td>
</tr>

</c:forEach>	
</table>
</div>


</div>
</body>
</html>