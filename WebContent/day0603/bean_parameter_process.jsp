<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="pVO" class="kr.co.sist.vo.ParamVO" scope="page"/>
<!-- 입력된 파라메터 한번에 받기 -->
<jsp:setProperty property="*" name="pVO"/>
<%-- <%=pVO.toString() %> --%>
이름:<jsp:getProperty property="name" name="pVO"/>
나이:<jsp:getProperty property="age" name="pVO"/>
메일:<jsp:getProperty property="mail" name="pVO"/>
성별:<jsp:getProperty property="gender" name="pVO"/>
주소:<jsp:getProperty property="addr" name="pVO"/>
도메인:<jsp:getProperty property="domain" name="pVO"/>
정보:<jsp:getProperty property="info" name="pVO"/>
영화:<jsp:getProperty property="movie" name="pVO"/>
<%
//배열인 경우에는 기존의 코드를 사용하여 보여준다
String[] movie=pVO.getMovie();//useBean의 id는 객체명이므로 자바코드에서 사용가능
if(movie!=null){
	for(String temp:movie){
		out.print(temp);
		out.print(" ");
	}//for
}else{
	out.print("선택된 영화 없음");
}//else
%>
</div>
</body>
</html>