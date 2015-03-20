<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<font color ="red">
<% 
	out.print("hello");
%> <!-- 이부분은 JSP부분 -->
</font>
<br> 
<%
	out.print("<br><font color = 'blue'>" + "김유진"+"</font>");

%>
</body>
</html>