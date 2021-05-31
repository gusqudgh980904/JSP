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

$("#maker").change(function(){
	if($("#maker").val()!="N/A"){
		
		var param="maker="+$("#maker").val();
		$.ajax({
			url:"param_db_json_process.jsp",
			type:"post",
			data:param,
			dataType:"json",
			error:function(xhr){
				console.log("에러코드:"+xhr.status)				
			},
			success:function(jsonObject){
				if(jsonObject.resultFlag){
					var output="<table class='table-bordered'><tr><td style='width:80px'>이미지</td><td style='width:80px'>차량명</td>"
					+"<td style='width:300px'>옵션</td>"
					+"<td style='width:60px'>년식</td>"
					+"<td style='width:80px'>가격</td>"
					+"<td style='width:80'>배기량CC</td></tr>";
					
					$.each(jsonObject.data,function(i,jsonCar){
						output+="<tr><td><img src='../car_img/"+jsonCar.car_img+"'style='width:80px;height:40px'/></td><td>"
						+jsonCar.model+"</td><td>"+jsonCar.car_option+"</td><td>"
						+jsonCar.car_year+"</td><td>"+jsonCar.price+"</td><td>"+jsonCar.cc+
						"</td></tr>";
					});//each
					
					if(jsonObject.dataCnt==0){
						output+="<tr><td colspan='6' align='center'>보유중인 차량이 없습니다.</td></tr>";
					}//if

					$("#model").html(output);
				}else{
					$("#model").html("<strong>서버에 문제가 발생하였습니다.</strong>");
				}//else
				
			}
		});//ajax
		
	}//if
});//change

});//ready

</script>
</head>
<body>
<div>
<select id="maker">
	<option value="N/A">----제조사----</option>
</select>

<div id="model"></div>
</div>
</body>
</html>