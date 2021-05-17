<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="지시자 충돌"%>
	<!-- 공통코드가 정의되는 JSP에서는 사용되는 JSP에서 디자인에 영향을 주지 않도록
		(소스보기 했을 때 하나의 HTMLㅑ처럼 보이도록)중복디자인에 대한 부분을 신경써서 만든다 -->
    <!-- bootstrap -->
    <link href="http://localhost/jsp_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap/js/bootstrap.min.js"></script>
<%
//변수,method가 공유되므로 끼워지는 모든 페이지에서 사용될 공통 값(코드) 정의
String name="공통 값";
%>
<%!
public String method(){
	return "공통으로 상용될 메소드";
}//method
%>

