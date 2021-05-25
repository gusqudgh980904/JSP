<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%//로그인 한 이후에 사용될 페이지
//로그인을 하지 않은 상황이거나,로그인은 했지만 지정시간이 지난 후에 이 페이지를 요청하면 
//다시 로그인하러 보낸다
%>
<%@include file="../common/jsp/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>use_session_value</title>

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
<!-- include directive로 합쳐진 jsp는 변수,method가 공유된다 -->
<%=id %>(<%=ldVO.getName() %>)님 두번째 작업 페이지<br/>
<a href="remove_session.jsp">세션삭제</a>

</div>
</body>
</html>