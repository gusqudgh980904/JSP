<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="kr.co.sist.vo.CarVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.sist.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String maker=request.getParameter("maker");

UserDAO uDAO=new UserDAO();
List<CarVO> list=uDAO.selectModel(maker);

SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-DD HH:mm");
//JSONObject생성
JSONObject jsonCar=new JSONObject();
//값추가
jsonCar.put("pubDate",sdf.format(new Date()));
jsonCar.put("writer","4강의실");
jsonCar.put("cnt",list.size());

JSONArray jaModel=new JSONArray();
JSONObject jsonTemp=null;

CarVO cVO=null;
for(int i=0;i<list.size();i++){
	cVO=list.get(i);
	jsonTemp=new JSONObject();
	jsonTemp.put("model",cVO.getModel());
	jsonTemp.put("car_option",cVO.getCar_option());
	jsonTemp.put("car_year",cVO.getCar_year());
	jsonTemp.put("price",cVO.getPrice());
	jsonTemp.put("cc",cVO.getCc());
	
	//생성되어 DB에서 조회된 결과값을 가진 JSONObject를 가진 JSONArray추가
	jaModel.add(jsonTemp);
}//for

//n개의 JSONObject를 가진 JSONArray를 JSONObject추가
jsonCar.put("data",jaModel);
		
out.print(jsonCar.toJSONString());		

%>