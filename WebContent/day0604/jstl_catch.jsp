<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:catch var="e">
<%
   if(new Random().nextBoolean()){
      throw new Exception("예외가 발생한 상황");
   }
%>
예외가 발생하지 않았을 때의 코드
<!-- jsp는 _jspService에서 자동으로 예외를 처리해준다. -->
</c:catch>
<c:if test = "${ e ne null }"> <!-- e가 null이 아니면 -->
예외가 발생했을 때 처리할 코드
</c:if>
</div>
</body>
</html>