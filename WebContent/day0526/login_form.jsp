<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%
    //Cookie사용
    //읽기:접속자가 들어오면 접속자의 생생되어있는 모든 쿠키를 읽는다(다른 서버에서 심은 쿠키는 읽어들일 수 없다)
    Cookie[] cookies=request.getCookies();
    
    String cookieId="";
    if(cookies!=null){
    	Cookie temp=null;
    	
    	for(int i=0;i<cookies.length;i++){
    		//쿠키얻기
    		temp=cookies[i];
    		//out.println(temp.getName()+"/"+temp.getValue());
    		
    		if("save_id".equals(temp.getName())){//쿠키의 이름이 save_id라면
    			
    			cookieId=temp.getValue();//값을 얻어온다
    		}//if
    		
    	}//for
    }//if
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>login_form</title>
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
	$("#id").keydown(function(evt){ 
		if(evt.which == 13){
			chkNull();
		}//end if
	});	
	$("#pass").keydown(function(evt){ 
		if(evt.which == 13){
			chkNull();
		}//end if
	});	
	$("#logBtn").click(function(){ 
		chkNull();
	});	
});

function chkNull(){
	if( $("#id").val() ==""){
		alert("아이디는 필수 입력");
		$("#id").focus();
		return;
	}//end if
	if( $("#pass").val() ==""){
		alert("비밀번호는 필수 입력");
		$("#pass").focus();
		return;
	}//end if
	$("#loginFrm").submit();
}//chkNull

</script>
</head>
<body>
<div>
<form action="login_process.jsp" method="post" id="loginFrm">
<table>
<tr>
	<td colspan="2"><h3>로그인</h3></td>
</tr>
<tr>
	<td><input type="text" name="id" id="id" tabindex="1" value="<%= cookieId%>"/><br/>
		<input type="checkbox" name="idFlag"<%= "".equals(cookieId)?"":" checked='checked'"%> />아이디 저장
		</td>
	<td rowspan="2"><input type="button" value="로그인" id="logBtn" tabindex="3"/></td>
</tr>
<tr>
	<td><input type="password" name="pass" id="pass" tabindex="2"/></td>
</tr>
</table>

</form>
</div>
</body>
</html>
    