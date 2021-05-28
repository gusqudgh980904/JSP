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
		$("#age").focusout(function(){
				$.ajax({
					url:"param_process.jsp",
					type:"post",
					data:"name="+$("#name").val()+"&age="+$("#age").val(),
					dataType:"json",
					error:function(xhr){
						console.log("에러코드:"+xhr.status);
					},
					success:function(jsonObj){
						$("#birth").html("<strong>"+jsonObj.birth+"</strong>");
						$("#output").html(jsonObj.name);
					}
				
				});//ajax			
		});//focusout
	});//ready
</script>
</head>
<body>
<div>
	이름:<input type="text" name="name" id="name"/><br/>
	나이:<input type="text" name="age"id="age"/>태어난해<span id="birth"></span>
	<br/>
	<div id="output"></div>
</div>
</body>
</html>