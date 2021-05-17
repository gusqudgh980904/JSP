<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declaration</title>
</head>
<body>
<%!
int i;//instance 변수
static int j;//static 변수
public static final int MAX=100;//constant

public String msg(){
	
	return "오늘은 비오는 월요일";
}//msg
%>
instace 변수 i의 값:<%=i %><br/>
static 변수 j의 값:<%=j %><br/>
constant MAX의 값:<%=MAX %><br/>
method 호출:<%=msg() %>
</body>
</html>