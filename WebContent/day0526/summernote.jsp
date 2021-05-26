<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>summernote</title>

    <!-- bootstrap -->
    <link href="http://localhost/jsp_prj/common/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery CDN(Contents Delivery Network) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- bootstrap -->
<script src="http://localhost/jsp_prj/common/bootstrap/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<style type="text/css">
</style>
<script type="text/javascript">
$(function(){
    $('#summernote').summernote({
        placeholder: '이미지를 포함한 관심사를 작성해주세요',
        tabsize: 2,
        height: 120,
        width:800,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['picture']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    
    $("#btn").click(function(){
    	$("#frm").submit();
    });//click
    
});//ready

</script>
</head>
<body>
<div>
<form action="use_summernote.jsp" method="post" id="frm">
<label>이름</label>
<input type="text" name="name"/><br/>
<label>관심사</label>
<textarea id="summernote"name="interest"></textarea><br/>
<input type="button" id="btn" value="글쓰기"/><br/>

</form>
</div>
</body>
</html>