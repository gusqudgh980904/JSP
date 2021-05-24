<%@page import="day0524.ImageCreate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>resize_img</title>

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
String flag=request.getParameter("flag");//최초요청에는 flag가 존재하지 않습니다

boolean jobflag="create".equals(flag);
if(!jobflag){
%>
<a href="resize_img.jsp?flag=create">이미지 생성</a>
<%}else{ 
	ImageCreate ic=new ImageCreate();
	String fileName="포챠코1.jpg";
	ic.createImg(fileName);
	StringBuilder sb=new StringBuilder(fileName);
	sb.insert(0,"rs_");
%>
<a href="use_thumbnail.jsp?thumb=<%=sb%>">썸네일 보기</a>
<%}//else %>

</div>
</body>
</html>