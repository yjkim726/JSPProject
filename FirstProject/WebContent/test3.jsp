<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
response.setContentType("text/html; charset=UTF-8");
request.setCharacterEncoding("UTF-8");
out.print("JSPHello"+"<br>");
String name = request.getParameter("name");
String id = request.getParameter("id");
String passwd = request.getParameter("pwd");
out.print("NickName = "+name+"<br>");
out.print("id = " + id+"<br>");
out.print("passwd = "+ passwd+"<br>");
%> 
이름 : <font color="blue"><%=name
%></font> <!-- 밑의 방법이 out.print와 같음 -->
<!-- 내장객체로 만들어뒀다. 그래서 out.print도 마음대로 사용가능 -->
</body>
</html>