<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
	</head>
	
	<body>
	<%
	request.setCharacterEncoding("UTF-8");
	out.print("<h2>"+"설문조사 결과"+"</h2>"+"<br>");
	String name = request.getParameter("name");
	out.print("이름 : "+"<b>"+name+"</b>"+"<br>");
	String gender = request.getParameter("gender");
	
	
	if(gender.equals("m"))
		response.sendRedirect("http://www.naver.com");
	else if(gender.equals("f"))
		response.sendRedirect("http://www.google.com");
	out.print("성별 : "+"<b>"+gender+"</b>"+"<br>");
	
	String[] season = request.getParameterValues("season");
	if(season==null)
		out.print("선택하세요");
	out.print("당신이 좋아하는 계절은 ");
	for(int i=0; i<season.length; i++){
		out.print("<b>"+season[i]+"</b>"+" " );
	}
	// for(String str : season){
	// out.print(str);	}
	out.print("입니다");
	%>
	</body>
</html>