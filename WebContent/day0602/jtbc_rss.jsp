<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="jtbc_rss를 파싱"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
`
    <!-- bootstrap -->
    <link href="http://localhost/jsp_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap/js/bootstrap.min.js"></script>

<style type="text/css">

</style>
<script type="text/javascript">
function getNews(newsUrl){
	$.ajax({
		url:newsUrl,
		type:"get",
		dataType:"xml",
		error:function(xhr){
			console.log(xhr.status);
			$("#newsOutput").html("뉴스를 읽는데 문제발생");
		},
		success:function(xmlDoc){
			//파싱하기위해 반복되지 않는 노드값 파싱
			var category=$(xmlDoc).find("category").text();
			
			var output="구분:"+category+"<br/>";
			//파싱하기위해 반복되는 상위노드 얻기:<item>
			var itemNodes=$(xmlDoc).find("item");tju+-
			
			$.each(itemNodes,function(i,itemNode){//item노드를 반복시켜 필요한 노드를 찾고 파싱
				output+="<div class='alert alert-success'>제목:"+
						"<a href='"+$(itemNode).find("link").text()+"'target='_new'>"
						+$(itemNode).find("title").text()+"</a><br/>"+
						"설명:"+$(itemNode).find("description").text()
						+"<br/>기사작성일:"+$(itemNode).find("pubDate").text()
						+"</div>";
			});//each
			$("#newsOutput").html(output);
		}
	});//ajax
}//getNews
</script>
</head>
<body>
<div>
<%
String[] title={"속보","정치","경제","사회","국가","문화"};
String[] url={"https://fs.jtbc.joins.com/RSS/newsflash.xml",
	"https://fs.jtbc.joins.com/RSS/politics.xml",
	"https://fs.jtbc.joins.com/RSS/economy.xml",
	"https://fs.jtbc.joins.com/RSS/society.xml",
	"https://fs.jtbc.joins.com/RSS/international.xml",
	"https://fs.jtbc.joins.com/RSS/culture.xml"
	};
for(int i=0;i<title.length;i++){
	%>
	<a href="#void" onclick="getNews('<%=url[i]%>')"><%=title[i]%>|</a>
	
	<%
}//for
%>
<div id="newsOutput"></div>
</div>
</body>
</html>