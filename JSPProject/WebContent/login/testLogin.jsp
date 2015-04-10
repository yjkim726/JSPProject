<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

	String id = request.getParameter("id"); //이 id는 name=""에서 설정한것과 같음
	String passwd = request.getParameter("passwd");
	
	if(id.equals("test")&&passwd.equals("1234")){
		//페이지 이동전에 세션에 저장
		session.setAttribute("loginId", id);
		session.setAttribute("loginPasswd", passwd);
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("loginForm.jsp");
	}
%>

<!-- 이 밑에 필요없습니다. 사실상 바로 페이지 이동을 할거기때문에 -->
<!-- testLogin.jsp -->
<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
	
	<body>
	
	</body>
</html>