<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=" UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

<!-- bootstrap -->
<link href="http://localhost/jsp_prj/common/bootstrap-3.3.2/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap-3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
   $("#btn").click(function(){
      $.ajax({
         url:"http://localhost/jsp_prj/day0527/jsonarray.jsp",
         type:"get",
         dataType:"json",
         async:false,
         error:function( xhr ){
            console.log("에러코드 : "+ xhr.status );
            console.log("에러메시지 : "+ xhr.statusText );
         },
         success :function( jsonArr ){
        	 var output="";
        	 
        	 $.each(jsonArr,function(i,jsonObj){
        		 output+=
        			 "<div>이름:<input type='text' value='"+jsonObj.name+"'><br/>"+
        			 "나이:<input type='text' value='"+jsonObj.age+"'><br/>"+
        			 "주소:<input type='text' value='"+jsonObj.addr+"'></div>"
        	 });//each
        		 
        	 $("#output").html(output);
        	 
        	 //JavaScript 옵션을 동적으로 생성
			//1.옵션을 생성할 select tag를 얻는다
			var selName=document.getElementById("selName");
        	//2.옵션을 초기화(이전의 옵션이 남아있는 상태에서 덮어쓴다)
        	selName.length=1;
        	//3.옵션을 생성
        	var tempJson;
        	for(var i=0;i<jsonArr.length;i++){//JSonArray를 for문을 사용하여 반복
        		tempJson=jsonArr[i];
        		selName.options[i+1]=new Option(tempJson.name,tempJson.name);//Option(value값,보여질값)
        	}//for
        	 
         }
      });//ajax
   });//click
});//ready
</script>
</head>
<body>
<div>
<input type="button" value="JSONArray값얻기" id="btn"/>
<div id="output"></div>
<select id="selName">
	<option>----이름선택----</option>

</select>
</div>
</body>
</html>
    