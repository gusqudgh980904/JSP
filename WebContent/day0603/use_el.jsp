<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
연산식<br/>
<ul>
<li><strong>산술연산자</strong></li>
<li>6+3=${6+3}</li>
<li>6%2=${6%2},${6 mod 2}</li>
<li><strong>관계연산자</strong></li>
<li>6>3=${6>3},${6 gt 3 }</li>
<li>6<3=${6<3},${6 lt 3 }</li>
<li>6>=3=${6>=3},${6 ge 7 }</li>
<li>3<=3=${3<=3},${3 le 3 }</li>
<li>6==6=${6==6},${6 eq 6 }</li>
<li>6!=3=${6!=3},${6 ne 3 }</li><!-- ne는 eclipse버그 -->
<li><strong>논리연산자</strong></li>
<li>true&&true=${true && true},${true and true }</li>
<li>false||false=${false||false},${false or false }</li>
<li><strong>삼항연산자</strong></li>
<li>2는 ${2%2==0?"짝수":"홀수" }</li>
<li>2는 ${2 mod 2 eq 3?"짝수":"홀수" }</li>
<li><strong>파라메터받기</strong></li>
<li>이름:${param.name }</li>
<li><a href="use_el.jsp?name=테스트">요청</a></li>
<li>
	<form action="use_el.jsp">
		<input type="text" name="name" placeholder="이름입력">
		<input type="submit" value="전송">
	</form>
</li>
</ul>

</div>
</body>
</html>