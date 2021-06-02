<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="사용자에게 보여줄 내용"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>forward_a</title>

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
사용자에게 보여줄 내용(forward_b.jsp)<br/>
<a href="forward_a.jsp?name=테스트">forward_a요청</a>
<div>
forward_a.jsp로 요청한 parameter:<%=request.getParameter("name")%>
</div>
<div>
forward_a.jsp에서 생성한 parameter:<%=request.getParameter("age")%>,<%=request.getParameter("addr")%>
</div>
<div>
<ul>
<%
	//request객체의 속성값으로 할당되어 전송되는 값 받기
	String[] names=(String[])request.getAttribute("names");
	for(int i=0;i<names.length;i++){
		%>
		<li><%=names[i]%></li>
		<% 
	}//for
%>
</ul>

</div>
</div>
</body>
</html>