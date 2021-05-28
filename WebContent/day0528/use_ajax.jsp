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
$(function(){
	//////////////JSP요청 TEXT응답/////////////
	$("#text").click(function(){
		$.ajax({
			url:"text.jsp",
			type:"get",
			dataType:"text",
			error:function(xhr){
				alert("에러코드:"+xhr.status+", 에러메시지:"+xhr.statusText);
				//404:URL확인
				//500:요청한 페이지 Error
				//200:요청에 대한 응답은 잘되었으나 처리할 수 없는 상태
			},
			success:function(data){
				var output="<marquee scrollamount='10'>"+data+"</marquee>"
				$("#output").html(output);
			}
		});//ajax
	});//click
	
	//////////////JSP요청 HTML응답/////////////
	$("#html").click(function(){
		$.ajax({
			url:"html.jsp",
			type:"post",
			dataType:"html",
			error:function(xhr){
				$("#output").html("에러코드:"+xhr.status+",에러메시지:"+xhr.statusText)
			},
			success:function(data){
				$("#output").html(data);
			}
		});//ajax
	});//click
	
	//////////////JSP요청 XML응답/////////////
	$("#xml").click(function(){
		$.ajax({
			url:"xml.jsp",
			type:"post",
			dataType:"xml",
			error:function(xhr){
				console.log("에러코드:"+xhr.status);
				console.log("에러메시지:"+xhr.statusText);
			},
			success:function(data){
				//alert(data);//xml은 <div>에 출력할 수 없다
				$("#output").html("<mark>"+$(data).find("data").text()+"</mark>");//parsing
			}
		});//ajax
	});//click
	
	//////////////JSP요청 JSON응답/////////////
	$("#json").click(function(){
		$.ajax({
			url:"json.jsp",
			type:"get",
			dataType:"json",
			error:function(xhr){
				console.log("에러코드:"+xhr.status);
				console.log("에러메시지:"+xhr.statusText);
			},
			success:function(json){
				$("#output").html(json.name+"/"+json.age+"/"+json.addr);
			}
		});//ajax
	});//click
	
			
});//ready
</script>
</head>
<body>
<div>
<input type="button" value="TEXT응답받기" id="text"/>
<input type="button" value="HTML응답받기" id="html"/>
<input type="button" value="XML응답받기" id="xml"/>
<input type="button" value="JSON응답받기" id="json"/>
</div>
<div id="output"></div>
</body>
</html>