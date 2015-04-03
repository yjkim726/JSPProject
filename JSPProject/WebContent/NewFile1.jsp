<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
	
	<body>
	<form action = "NewFile2.jsp" method="post" >
	<h1>설문조사 </h1> <hr>
	이름 : 
	<input type = "text" name =name > <hr>
	성별 :
	<input type = "radio" name= gender value = "m">남자
	<input type = "radio" name= gender value = "f">여자 <hr>
	좋아하는 계절 : 
	<input type = "checkbox" name = "season" value = "봄">봄
	<input type = "checkbox" name = "season" value = "여름">여름
	<input type = "checkbox" name = "season" value = "가을">가을
	<input type = "checkbox" name = "season" value = "겨울">겨울<hr>
	<input type = "submit"  value ="전송">
	<input type = "reset"  value = "취소">
	</form>
	</body>
</html>