<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%
//1.JSONArray생성
JSONArray ja=new JSONArray();
//2.JSONArray에 들어갈 JSONObject생성
JSONObject obj1=new JSONObject();
obj1.put("name","현병호");
obj1.put("age",25);
obj1.put("addr","서울시 강남구 역삼동");

JSONObject obj2=new JSONObject();
obj2.put("name","곽범수");
obj2.put("age",26);
obj2.put("addr","서울시 서초구 서초동");

JSONObject obj3=new JSONObject();
obj3.put("name","박기범");
obj3.put("age",24);
obj3.put("addr","서울시 동대문구 동대문동");

//3.JSONNObject를 JSONArray에 추가ㅓ
ja.add(obj1);
ja.add(obj2);
ja.add(obj3);
out.println(ja.toJSONString());
%>