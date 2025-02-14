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
request.getRequestURI() : 위의 url 중에서 경로(path) 이후의 값 => /jspBoard/test/requestTest.jsp
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
	
<!-- 
** MVC모델2 의 HttpServlet(**서블릿)Request 주요 기능 **

1. 요청 파라미터 가져오기 : 클라이언트에서 폼 데이터를 제출하거나 URL에 포함된 파라미터 값을 서버에서 처리할 때 사용됩니다.
예시: String name = request.getParameter("username"); 요청 파라미터 값을 가져옵니다.

2. 헤더 정보 가져오기 : HTTP 요청에 포함된 헤더를 읽을 수 있습니다.
예시: String userAgent = request.getHeader("User-Agent"); (사용자의 브라우저 정보)

3. 클라이언트의 IP 주소 확인 : 클라이언트의 IP 주소를 가져올 수 있습니다.
예시: String clientIp = request.getRemoteAddr(); 클라이언트의 IP 주소를 가져옵니다.

4. 세션 객체 가져오기 : request 객체를 통해 클라이언트와 관련된 세션 객체를 가져올 수 있습니다. 세션을 통해 클라이언트 상태를 추적하고 관리할 수 있습니다.
예시: HttpSession session = request.getSession(); 현재 요청에 해당하는 세션 객체를 가져옵니다.

5. 쿼리 스트링 파라미터 가져오기: URL에 포함된 쿼리 파라미터를 읽을 수 있습니다.
예시: String queryString = request.getQueryString(); URL의 쿼리 문자열을 가져옵니다.

6. HTTP 메소드 가져오기: 클라이언트가 요청한 HTTP 메소드(예: GET, POST, PUT 등)를 확인할 수 있습니다.
예시: String method = request.getMethod(); HTTP 메소드(GET, POST 등)를 가져옵니다.

7. 요청 URI 가져오기: 클라이언트가 요청한 URI를 확인할 수 있습니다.
예시: String uri = request.getRequestURI(); 요청된 URI를 가져옵니다.

8. 폼 데이터 처리 (POST 요청): getParameterMap()을 사용하면, 요청에 포함된 모든 파라미터와 그 값을 Map<String, String[]> 형태로 가져올 수 있습니다.
예시: Map<String, String[]> parameterMap = request.getParameterMap(); (폼 데이터 전체 가져오기)

9. 서버정보 : getServerName()과 getServerPort()를 사용하여 요청을 처리하는 서버의 이름과 포트를 알 수 있습니다.
예시 : String serverName = request.getServerName(); ,  int serverPort = request.getServerPort();

-->

</body>
</html>