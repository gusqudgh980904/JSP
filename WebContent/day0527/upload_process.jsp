<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>upload_process</title>

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
<%--enctype="multipart/form-data"인 경우에는 request객체를 사용하여 parameter를 받을 수 없다

<%
String name=request.getParameter("name");
String age=request.getParameter("age");
%>
이름:<%=name %>,나이:<%=age %> --%>

<%
String savePath="C:/dev/workspace/jsp_prj/WebContent/upload/";
int maxSize=1024*1024*7;//7Mbyte
//File Upload Component를 생성하면 파일이 업로드된다
MultipartRequest mr
			=new MultipartRequest(request,savePath,maxSize,"UTF-8",new DefaultFileRenamePolicy());
//parameter 값받기:MultipartRequest사용
String uploader=mr.getParameter("name");//<input type="text">
String age=mr.getParameter("age");//<select>
//원본파일명
String originName=mr.getOriginalFileName("upfile");
//변경된 파일명
String reName=mr.getFilesystemName("upfile");
%>
<ul>
<li><label>업로더</label>:<strong><%=uploader %></strong></li>
<li><label>나이</label>:<strong><%=age %></strong></li>
<li><label>파일명</label>:변경파일명:<strong><%=reName %>
</strong>(원본:<%=originName %>)</li>
</ul>
<img src="http://localhost/jsp_prj/upload/%ED%86%B0%ED%95%98%EB%94%941.jpg<%=reName %>"/>
<a href="view_img.jsp?filename=<%=reName%>">이미지보기</a>
</div>
</body>
</html>