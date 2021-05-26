<%@page import="kr.co.sist.dao.UserDAO"%>
<%@page import="kr.co.sist.vo.LoginDataVO"%>
<%@page import="kr.co.sist.vo.LoginVO"%>
<%@page import="kr.co.sist.util.cipher.DataEncrypt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login_process</title>

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
<%
//parameter 값 받기
String id=request.getParameter("id");//<input type="text" name="id">
String pass=request.getParameter("pass");//<input type="password" name="pass">
//비밀번호가 암호화되어 저장되었기 때문에 로그인 할때에도 비밀번호를 암호화하여 같은지 비교해야한다
pass=DataEncrypt.messageDigest("MD5",pass);
//분리된 아이디와 비밀번호를 손쉽게 관리하기 위해서 VO에 설정
LoginVO lVO=new LoginVO(id,pass);
//DAO단의 클래스를 사용하여 DB작업 수행
UserDAO uDAO=new UserDAO();

LoginDataVO ldVO=uDAO.selectLogin(lVO);

if(ldVO==null){
	%>
	아이디나 비밀번호를 확인해주세요<br/>
	<a href="login_form.jsp">뒤로</a>
	<%
}else{
	//다른 페이지에서 사용될 값을 세션에 저장(반드시 로그인 후에 서비스를 이용해야할 페이지에서 로그인 여부 체크)
	session.setMaxInactiveInterval(60);//요청이 끝난 다음에 다음 요청이 발생하기전 까지의 시간
	session.setAttribute("id",id);//세션에 값을 설정
	session.setAttribute("userData",ldVO);
	
	
	///////////쿠키 아이디를 설정
	//1.아이디 저장 체크박스가 체크되었는지 얻기
	String idSaveFlag=request.getParameter("idFlag");
	if(idSaveFlag!=null){//value속성이 없는 상태에서 check하면 "on"이 들어온다
		//2.쿠키생성(파라메터로 받은 아이디를 save_id라는 이름으로 쿠키저장
		Cookie idCookie=new Cookie("save_id",id);
		//3.쿠키생존시간(파기시간)을 설정
		idCookie.setMaxAge(60);
	//4.쿠키심기
	response.addCookie(idCookie);
	}else{//체크박스가 체크되어잇지 않은 상태,쿠키를 삭제해야하는 상태
		//쿠키를 삭제
		//1.삭제할려는 이름의 쿠키를 생성
		Cookie cookie=new Cookie("save_id","");
	//2.생존시간을 0으로설정
	cookie.setMaxAge(0);
	//3.쿠키심기
	response.addCookie(cookie);
		
	}//else
	
	%>
	<%=id%>,<%=ldVO.getName()%>(<a href="mailto:<%=ldVO.getEmail()%>">메일쓰기</a>)님이 로그인 하셨습니다
	<% 
}//else
%>
<a href="use_info.jsp">작업페이지</a>
</div>
</body>
</html>