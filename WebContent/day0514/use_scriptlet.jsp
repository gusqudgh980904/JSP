<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <!-- bootstrap -->
    <link href="http://localhost/html_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
<script src="http://localhost/servlet_prj/common/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">

</script>
</head>
<body>

<div>
<% //Scriptlet:JSP에서 method안의 java코드를 작성할 때 쓰는 태그  
	int age=0;//지역변수:어느 Scriptlet에서 쓸 수 있음
	String name="현병호";
%>
<a href="#"><%=name%><span class="badge">42</span></a>
<br/>
<button class="btn btn-primary" type="button">
  Messages <span class="badge">4</span>
</button>

<%
	String na=name;
%>
<%= na %>
<% for(int i=0;i<6;i++){%>
<h<%=i+1%>>안녕하세요?<small>오늘은 금요일</small></h<%=i+1%>> 
<% }//for %>

<%
String[][] data={{"현병호","25","경기도 동두천시"},{"강인섭","26","서울시 구로구"},{"곽범수","27","서울시 동대문구"}};
%>
<div style="width:400px;">
<table class="table table-hover" style="border-bottom:1px solid #FF0000">
<thead>
<tr>
	<th style="width:100px; text-align:center;">이름</th>
	<th style="width:80px; text-align:center;">나이</th>
	<th style="width:220px; text-align:center;">주소</th>
</tr>
</thead>
<tbody>
<% for(int i=0;i<data.length;i++){%>
<tr>
<% for(int j=0;j<data[i].length;j++){%>
	<td style="text-align:center"><%= data[i][j] %></td>
	<%}//for %>

</tr>
<%}//for %>
</tbody>
	</table>
	</div>
<!-- 1~100까지의 합을출력 -->
<%  
int max=0;
for(int i=0;i<101;i++){
	max+=i;
}//for
%>	
<h3><%= max %></h3>
<!-- 위의 이름과 나이를 input type="text"에 value에 넣어 출력 -->
<div class="input-group input-group-sm">
  <span class="input-group-addon" id="sizing-addon1">@</span>
  <input type="text" class="form-control" value="<%=name%>,<%=age%>" aria-describedby="sizing-addon1">
</div>
<div class="input-group input-group-lg">
  <span class="input-group-addon" id="sizing-addon1">@</span>
  <input type="text" class="form-control" value="<%=age%>" aria-describedby="sizing-addon1">
</div>
	
</div>
</body>
</html>