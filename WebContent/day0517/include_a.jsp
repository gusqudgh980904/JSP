<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="지시자 충돌"%>
<% String test="공통코드를 사용하는 페이지의 선언된 변수"; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>include_a</title>


<%@ include file="include_b.jsp" %>
<style type="text/css">

</style>
<script type="text/javascript">

</script>
</head>
<body>
<div>
<%=test %>
<div class="alert alert-danger" role="alert">
공통로직을 사용하는 JSP페이지
</div>
<div class="alert alert-info" role="alert">
이름:<strong><%=name %></strong><br/>
method:<strong><%=method() %></strong>
</div>

</div>
</body>
</html>