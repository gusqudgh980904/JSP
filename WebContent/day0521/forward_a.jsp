<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
응답

</div>
</body>
</html>
<%
//업무 처리후 데이터 생성
List<String> list=new ArrayList<String>();
list.add("ㅋㅋㅋㅋ");
list.add("ㅎㅎㅎㅎ");
list.add("하하하");
list.add("현병호");

Calendar cal=Calendar.getInstance();


//발생한 값을 view로 전달하기 위해 request객체에 속성 값으로 설정한다.
request.setAttribute("data",list);
request.setAttribute("cal",cal);
request.setAttribute("name","현병호");

//1.이동할 페이지를 설정
RequestDispatcher rd=request.getRequestDispatcher("forward_b.jsp");
//2.dlehd
rd.forward(request, response);
%>