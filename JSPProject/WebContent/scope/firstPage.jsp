<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- firstPage.jsp -->
<%
	//page 영역
	pageContext.setAttribute("page","PageScope"); //page라는 이름으로 PageScope라는 값
	//request 영역
	request.setAttribute("request", "RequestScope");
	
	//페이지 이동
	//1. 리다이렉트 방식
	//기존의 request가 유지가 안됩니다. => page가 유지가 안되요
	//response.sendRedirect("secondPage.jsp");
	
	//2.포워드 방식
	   RequestDispatcher requestDispatcher =
	request.getRequestDispatcher("secondPage.jsp");
	requestDispatcher.forward(request, response);   
	 
	//session 영역
	session.setAttribute("session", "SessionScope");
	
	//application영역
	application.setAttribute("application","ApplicationScope");
	
%>
<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
	
	<body>
	<h1>첫번째 페이지</h1>
	<hr>
	page 영역 : <%= pageContext.getAttribute("page") %><br>
	request 영역 : <%= request.getAttribute("request") %><br>
	session 영역 : <%= session.getAttribute("session") %><br>
	application 영역 : <%= application.getAttribute("application") %><br>
	</body>
</html>