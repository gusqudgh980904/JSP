<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>xml_parsing</title>

    <!-- bootstrap -->
    <link href="http://localhost/jsp_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		$.ajax({
			url:"msg.jsp",
			type:"post",
			dataType:"xml",
			error:function(xhr){
				cosole.log(xhr.status);
			},
			success:function(xmlDoc){
				$("#output").html($(xmlDoc).find("msg").text());
			}
		});//ajax
	});//click
	
	$("#btn1").click(function(){
		$.ajax({
			url:"msgs.jsp",
			type:"get",
			dataType:"xml",
			error:function(xhr){
				cosole.log(xhr.status);
			},
			success:function(xmlDoc){
				//alert($(xmlDoc).find("msgs").length)
				var output="";
				$.each($(xmlDoc).find("msg"),function(i,msgNode){
					output+=$(msgNode).text()+"<br/>";			
				});//each
				$("#output").html(output);
			}
		});//ajax
	});//click

	$("#btn2").click(function(){
		$.ajax({
			url:"data.jsp",
			type:"post",
			dataType:"xml",
			error:function(xhr){
				cosole.log(xhr.status);
			},
			success:function(xmlDoc){
				var deptNodes=$(xmlDoc).find("dept");//3개 dept
				var table="<table><tr><th>부서번호</th><th>부서명</th><th>위치</th></tr>";
				$.each(deptNodes,function(i,deptNode){//상위노드 dept를 반복시키고
					table+="<tr><td>"+
						$(deptNode).find("deptno").text()//반복되는 dept노드의 자식노드를 찾아 파싱
						+"</td><td>"+
						$(deptNode).find("dname").text()
						+"</td><td>"+
						$(deptNode).find("loc").text()
						+"</td><tr>";
				});//each
				$("#output").html(table);
			}
		});//ajax
	});//click
	
	
	
});//ready
</script>
</head>
<body>
<div>
<input type="button" value="노드하나 파싱" id="btn"/>
<input type="button" value="같은 이름의 노드 파싱" id="btn1"/>
<input type="button" value="같은 이름의 노드 파싱2" id="btn2"/>
<div id="output"></div>
</div>
</body>
</html>