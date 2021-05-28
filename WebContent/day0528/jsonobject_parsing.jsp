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
         url:"http://localhost/jsp_prj/day0527/jsonobject.jsp",
         type:"get",
         dataType:"json",
         async:true,
         error:function( xhr ){
            console.log("에러코드 : "+ xhr.status );
            console.log("에러메시지 : "+ xhr.statusText );
         },
         success:function( jsonObj ){
            //parsing하여 view설정.
            //parsing data를 HTML Form Control설정
            $("#name").val( jsonObj.name );
            $("#age").val( jsonObj.age );
            $("#addr").val( jsonObj.addr );
            //parsing data를 table에 설정.
            var output="<tr><td><strong>"+ jsonObj.name+"</strong></td><td>"+
               jsonObj.age+"</td><td>"+jsonObj.addr+"</td></tr>";
               
            $("#tab:last").append( output );
            
            var output1="<span title='"+jsonObj.addr+"에 거주중'>"+
               jsonObj.name+"</span>";
            
            
            $("#outDiv").append( output1 );
         } 
      });//ajax
   });//click
});//ready
</script>
</head>
<body>
<div>
<label>이름</label><input type="text" name="name" id="name"/><br/>
<label>나이</label><input type="text" name="age" id="age"/><br/>
<label>주소</label><input type="text" name="addr" id="addr"/><br/>
<input type="button" value="값설정" id="btn"/><br/>
<div>
<table id="tab" class="table-bordered">
<tr>
   <th style="width: 150px">이름</th>
   <th style="width: 100px">나이</th>
   <th style="width: 350px">주소</th>
</tr>
</table>
</div>
</div>

</body>
</html>