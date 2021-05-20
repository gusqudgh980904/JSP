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
<%//POST방식일 때 한글 처리(request객체가 사용되기 전)
request.setCharacterEncoding("UTF-8");
%>
요청방식:<%=request.getMethod() %><br/>
<%
	//name속성에 이름이 유일한 경우
	String name=request.getParameter("name");
	//name속성에 이름이 중복되는 경우
	String[] movies=request.getParameterValues("movie");
%>
이름:<strong><%= name %></strong><br/>
선택영화:
	<ul>
	<%
	if(movies!=null){
	//try{
	for(int i=0;i<movies.length;i++){%>
		<li><%=movies[i] %></li>
	<%}//for
	}else{
	//}catch(NullPointerException npe){
	%>
	<li>선택한 취미가 없습니다.</li>	
	<%
	//}//catch
	}//else
	%>
	</ul>
<img src="../common/images/이중구.jpg">
</div>
</body>
</html>