<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="request내장객체의 사용"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>use_request</title>

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
String[] blockIp={"138","142","146"};

String ip=request.getRemoteAddr();//접속자의 IP주소를 얻는다
for(int i=0;i<blockIp.length;i++){
	if(ip.endsWith(blockIp[i])){
	response.sendRedirect("https://www.police.go.kr/index.do");
	return;
	}//if
}//for
%>
<ul>
	<li>요청방식:<%=request.getMethod() %></li>
	<li>요청URL:<%=request.getRequestURL() %></li>
	<li>요청프로토콜:<%=request.getProtocol() %></li>
	<li>요청서버이름:<%=request.getServerName() %></li>
	<li>요청서버포트:<%=request.getServerPort() %></li>
	<li>요청URI:<%=request.getRequestURI() %></li>
	<li>요청 서블릿경로:<%=request.getServletPath() %></li>
	<li>Query String:<%=request.getQueryString() %></li>
	<li>parameter(이름 유일):<%=request.getParameter("name") %></li>
	<!-- 이름이 같은 파라메터를 getParameter()를 사용하여 값을 얻으면 가장 처음게 나옴 -->
	<li>parameter(이름 같은경우):<%=request.getParameter("age") %></li>
	<li>
	parameter(이름같은경우)
	<%
	String[] ages=request.getParameterValues("age");
	if(ages!=null){
		for(int i=0;i<ages.length;i++){
			out.println(ages[i]);
		}//for
	}//if
	%></li>
	
	<li>
	parameter의 모든 이름얻기:중복된 이름은 하나만나온다
	<%
	Enumeration<String> en=request.getParameterNames();
	while(en.hasMoreElements()){
		out.println(en.nextElement());
	}//while
	%></li>
	
	<li>
	Header 이름얻기
	<%
	Enumeration<String> en1=request.getHeaderNames();
	while(en1.hasMoreElements()){
		out.println(en1.nextElement());
	}//while
	%></li>
	
	<li>접속자의 ip address:<%=request.getRemoteAddr() %></li>
	<li>접속자의 port:<%=request.getRemotePort() %></li>
</ul>
<a href="use_request.jsp?name=park&age=20&age=21">쿼리스트링 요청</a>
</div>
</body>
</html>