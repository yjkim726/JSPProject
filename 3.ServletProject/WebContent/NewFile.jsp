<%@page language ="java" contentType ="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>JSP/Servlet</title>
		<style>
			body{
				
				background-image:url("cat.jpg");  
				background-repeat:no-repeat;
				background-attachment:fixed;
			}
		
			<!-- 배경 이미지 나타내기-->
			<!-- no repeat은 반복없음 -->
			input, select,textarea {
			border : green 1pt dashed;
			background : pink;
			color : red;
			font-size:100px;
			font-weight: bold
			}
			<!-- solid, dashed-->
			<!-- 이게바로 CSS -->
		</style>
		<script>
		<!-- 자바 스크립트 -->
		function testfunc(){
			alert("Hello JavaScript!");
		}
		</script>
	</head>
	
	<body>
		<!-- test.jsp -->
		<h1>Servlet Test</h1>
		<hr>
		<!--  submit버튼 누를때 해당 함수가 호출 -->
		<form action="TestServlet" onsubmit ="return testfunc()">
		<!-- 이름을 반드시 똑같이 줘야합니다. -->
		<!-- 구름역할을 해주는 겁니다. 이래야 둘중 하나만 선택이 가능합니다.-->
		<!-- name이 서블릿에서 getParameter로 넘어갈때 받는거 -->
			<input type="text" name= "id"><br>
			<input type="radio" name="gender" value="임우현은"> 임우현은
			<input type="radio" name="gender" value="우현이는"> 우현이는 <br>
			
			<!-- name은 다 달라도 상관은 없어요. 하지만 편의상 !-->
			<!-- 축구만 선택할 경우 나머지는 값이 없고, 문제가 되기때문에 -->
			<input type="checkbox" name = "hobby" value="축구">축구
			<input type="checkbox" name = "hobby" value="야구">야구
			<input type="checkbox" name = "hobby" value="배구">배구 <br>
			
			<select name="subject">
				<option value="html">HTML</option>
				<option value="css">CSS</option>
				<option value="javaScript">JAVASCRIPT</option>
			</select><br>
			
			<textarea name="txt" rows="20" cols="40"></textarea>
			
			<input type="color" name=myColor> <br>
			<input type="email" name=myEmail> <br>
			<input type="submit" value="서버로 제출"> 
			
		</form>
	</body>
</html>