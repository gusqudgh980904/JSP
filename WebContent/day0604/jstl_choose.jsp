<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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
<a href="jstl_choose.jsp?grade=a">손님</a>
<a href="jstl_choose.jsp?grade=b">일반사용자</a>
<a href="jstl_choose.jsp?grade=c">관리자</a>
</div>
<img src="../common/images/톰하디.jpg"><br/>
<c:choose>
	<c:when test="${param.grade eq 'a' }">손님은 읽기만 할 수 있습니다</c:when>
	<c:when test="${param.grade eq 'b' }">일반사용자는 읽기와 쓰기를 할 수 있어요</c:when>
	<c:when test="${param.grade eq 'c' }">관리자는 읽기,쓰기,삭제를 할 수 있어요</c:when>
	<c:otherwise>
	위의 링크를 클릭해주세요
	</c:otherwise>


</c:choose>
</body>
</html>