<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    //관리자로 로그인 했다면 "관리자!"를 보여주고 싶다.
    if(new Random().nextBoolean()){
    	//예를 들어 관리자가 로그인 했다면 세션에 정보가 추가된다.
    	session.setAttribute("admin_flag","admin");
    }//if
    %>
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
<a href="jstl_if.jsp?flag=true">클릭</a>
<div>
<%-- <c:if test='${param.flag eq null}'> --%>
<!-- EL에서는 비었는지? 물어볼때 empty를 사용 -->
<c:if test='${empty param.flag}'>
<span style="color:#FF0000">위의 링크를 클릭해주세요</span>
</c:if>
<c:if test='${not empty param.flag}'>
<span style="color:#00FF00">링크를 클릭하셨습니다</span>
</c:if>
</div>
<a href="job.jsp">작업페이지</a>
</div>
</body>
</html>