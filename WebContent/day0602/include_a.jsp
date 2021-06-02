<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="공통디자인을 사용해야할 페이지"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>include_a</title>

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
외부페이지
<div><!-- 공통디자인이 필요한 부분 -->
<jsp:include page="include_b.jsp"/>
</div>
<!-- inclue directive와 다르게 소스와 instance가 각각만들어지기 때문에
변수나 method의 공유가 되지 않으며,page directive의 충돌이 발생하지 않는다 -->
<%-- <%=name %> --%>
외부페이지
</div>
</body>
</html>