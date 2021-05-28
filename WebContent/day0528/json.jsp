<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
JSONObject json=new JSONObject();
json.put("name","곽범수");
json.put("age",20);
json.put("addr","서울시 강남구 역삼동");
out.println(json.toJSONString());

%>