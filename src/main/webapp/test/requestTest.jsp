<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
request.getRequestURL() : 실행 후 브라우저의 url 주소 => http://192.168.0.253:8080/jspBoard/test/requestTest.jsp
request.getRequestURL() : 위의 url 중에서 경로(path) 이후의 값 => /jspBoard/test/requestTest.jsp
request.getContextPath(): /jspBoard (첫번째 path 이고 프로젝트 이름) => /jspBoard
request.getRemoteAddr() : 클라이언트의 ip 주소 => 192.168.0.227
		ㄴ ipv6(ip버전6 : 8자리(: 기준) 128비트) 0:0:0:0:0:0:0:1 (ipv4 127.0.0.1) localhost 주소 
request.getRemoteHost() : 클라이언트의 컴퓨터 이름. 따로 설정하지 않으면 ip 주소 => 192.168.0.227
request.getLocalAddr() 	: => 192.168.0.253 로컬 주소(선생님꺼)
request.getLocalName() 	: => DESKTOP-0CO5278
request.getLocalPort() 	: => 8080
request.getLocale() 	: => ko_KR (사용하는 언어. 사용하는 나라)
 -->
	<h2>JSP 내장 객체  request 의 get 메소드들...</h2>
	<ul>
		<li><%= request.getRequestURL() %></li>  
		<li><%= request.getRequestURI() %></li>
		<li><%= request.getContextPath() %></li>
		<!-- 서버 코드이므로 Remote 는 클라이언트 -->
		<li><%= request.getRemoteAddr() %></li>
		<li><%= request.getRemoteHost() %></li>
		<!-- 서버 코드이므로 Local은 서버 -->
		<li><%= request.getLocalAddr() %></li>
		<li><%= request.getLocalName() %></li>
		<li><%= request.getLocalPort() %></li>
		<li><%= request.getLocale() %></li>
	</ul>

</body>
</html>