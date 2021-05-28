<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//1.생성
JSONObject json=new JSONObject();
//2.값할당
json.put("name","현병호");
json.put("age",20);
json.put("addr","서울시 강남구 역삼동");
json.put("name","강인섭");//중복된 키가 존재하면 나중에 들어온걸로 덮어쓴다
out.println(json.toJSONString());
%>