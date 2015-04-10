<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- main.jsp -->
<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
	
	<body>
	<h1> 환영합니다.</h1>
	<%
		//Object는 모든 클래스의 부모니까 형변환이 다 가능합니다.
		String id = (String) session.getAttribute("loginId");
		String passwd = (String)session.getAttribute("loginPasswd");
		%>
		<% 
		if(id!=null&&passwd!=null) {%>
	<font color = "red"><%=id %></font>님 환영합니다.
	<form action="logout.jsp"> 
		<input type="submit" value="로그아웃">
	</form>
	<!-- 밑은 링크거는 방법 -->
<a href="logout.jsp">로그아웃</a>	

<%
		}
	else{
%>
	<font color = "red">로그아웃 되었습니다.</font>
<%} %>

	</body>
</html>