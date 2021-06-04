<%@page import="org.apache.catalina.manager.util.SessionUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
<%!
String name="진재혁";
%>
EL:${name}<br/><!-- EL에서는 변수에 직접 접근할 수 없다 -->
표현식:<%=name %>
<div>
<%
//page scope객체에 값 설정.값은 이 페이지에서만 사용
pageContext.setAttribute("pageName",name);
//request scope객체에 값설정.값은 이 페이지와 forward로 이동한 페이지에서 사용
request.setAttribute("reqName",name);
//sesseion scope객체에 값 설정.값은 접속자마다 따로 사용되고, 모든페이지에서 사용가능
session.setAttribute("sesName",name);
//application scope객체에 값 설정.최초 페이지를 요청한 접속자가 객체를 생성하며
//모든 접속자가 모든 페이지에서 값을 사용(하나만 생성)
application.setAttribute("appName",name);
%>
<%-- <jsp:forward page="use_el2.jsp"/> --%>
pageScope:<strong>${pageScope.pageName}</strong>(${pageName})<br/>
requestScope:<strong>${requestScope.reqName}</strong>(${reqName})<br/>
sessionScope:<strong>${sessionScope.sesName}</strong>(${sesName})<br/>
applicationScope:<strong>${applicationScope.appName}</strong>(${appName})<br/>
<a href="use_el2.jsp">scope객체에 설정된 값 읽기</a>

</div>
</div>
</body>
</html>