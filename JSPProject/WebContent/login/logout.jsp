<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- logout.jsp -->
<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
	
	<body>
	
	<%
		//session.removeAttribute("loginId");  //한개씩 지우기
		//session.removeAttribute("loginPasswd");
		session.invalidate(); //세션에 들어간 값 한꺼번에 지우기
		
		response.sendRedirect("main.jsp");
	%>
	</body>
</html>