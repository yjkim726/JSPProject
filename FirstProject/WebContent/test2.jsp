<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> <!--  h1은 진하게 나오는것 -->
GET
</h1>
<!-- 맨위에 contentType  text타입 -->
<form method ="get" action ="HelloServlet">
	<input type="submit" value="get 방식 요청">
	<hr>
	<a href="HelloServlet">여기를 클릭하세요</a>
	<!-- 이 공간은 get으로 보내진다 
	HelloServelet으로 가서 do get에 있는 메소드가 호출
	submit ->제출하다라는 의미 서버에게 제출하는것
	자신이 포함되어있는 form 태그를 제출 -->
	<form action="HelloServlet"> 이름 : <input type="text" name = "name"> <!-- name은 각각에 이름을 줍니다 --><br>
							아이디 : <input type="text" name = "id"> <br>
							비밀번호 : <input type="password" name = "pwd"> <br>
	<input type="submit" value="get 방식 요청2222"> </form>
</form>
<hr>
<h1>POST</h1>
	<form method ="post" action ="HelloServlet">
	<input type="submit" value="post 방식 요청">
	<!-- HelloServelet으로 가서 do post에 있는 메소드가 호출 -->
	<form action="HelloServlet"> 이름 : <input type="text" name = "name"> <!-- name은 각각에 이름을 줍니다 --><br>
							아이디 : <input type="text" name = "id"> <br>
							비밀번호 : <input type="password" name = "pwd"> <br>
	<input type="submit" value="get 방식 요청2222"> </form>
</form>
<hr>
<h1> <!--  h1은 진하게 나오는것 -->
JSP
</h1>
<!-- 맨위에 contentType  text타입 -->
	<form method="post" action="test3.jsp"> 이름 : <input type="text" name = "name"> <!-- name은 각각에 이름을 줍니다 --><br>
							아이디 : <input type="text" name = "id"> <br>
							비밀번호 : <input type="password" name = "pwd"> <br>
	<input type="submit" value="JSP 방식 요청2222"> </form>
</form>
</body>
</html>