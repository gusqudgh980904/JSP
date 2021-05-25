<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../common/jsp/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>remove_session</title>

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
//세션삭제
//세션값 삭제(세션은 존재하나 값만 삭제 된 것)
session.removeAttribute("id");
session.invalidate();//브라우저에 할당된 세션을 무효화
//무효화 이후에는 세션에 값을 얻거나 삭제하는 등의 작업을 할 수 없다
response.sendRedirect("http://localhost/jsp_prj/day0524/login_form.jsp");
%>
<%=session.getAttribute("id") %>
</div>
</body>
</html>