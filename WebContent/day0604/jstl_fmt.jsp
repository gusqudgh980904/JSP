<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<%
int i=202106;
request.setAttribute("max_i",i);
%>
${max_i}<br/>
<fmt:formatNumber pattern="0,000,000" value="${max_i }"/><br/>
<fmt:formatNumber pattern="#,###,###" value="${max_i }"/><br/>
<%
Date date=new Date();
request.setAttribute("date",date);
%>
${date}<br/>
<fmt:formatDate value="${date}" pattern="YYYY-MM-dd EEE a hh:mm:ss"/>
</div>
</body>
</html>