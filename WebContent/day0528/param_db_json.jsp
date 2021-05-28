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
	$.ajax({
		url:"json_car_maker.jsp",
		type:"get",
		dataType:"json",
		error:function(xhr){
			console.log("에러코드:"+xhr.status);			
		},
		success:function(jsonArr){
			$.each(jsonArr,function(i,jsonObj){
			$("#maker:last").append("<option value='"+jsonObj.maker+"'>"+jsonObj.maker+"</option>");
			});//each
		}
		
	
		
	});//ajax
});//ready

</script>
</head>
<body>
<div>
<select id="maker">
	<option value="N/A">----제조사----</option>

</select>

</div>
</body>
</html>