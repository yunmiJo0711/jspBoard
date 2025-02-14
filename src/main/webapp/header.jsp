<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul#header{
		list-style: none;
		padding: 10px 20px;
		display: flex;
		justify-content: center;
		margin: 0;
	}
	ul#nav{
		list-style: none;
		display: flex;
	}
	nav{
		padding: 5px;
		font-size: 0.7rem;
		display: flex;
		justify-content: flex-end;
		background-color: pink;
		color: white;
	}
	ul#header > li{
		padding: 20px;
	}
	ul#nav > li{  /* > : 자식 li */
		padding: 0px 10px;
	}
	ul#nav a{    /* 공백 : 자손 a */
		color: black;
		font-weight: 600;
	}
	a{
		text-decoration: none;
		padding: 10px;
	}
</style>
</head>
<body>
 	<!-- 헤더 부분 -->
 	<header>
		<ul id="header">
			<li><a href="<%= request.getContextPath()%>">HOME</a></li>
			<li><a href="#">회사소개</a></li>
			<li><a href="#">도서</a></li>
			<!-- include 하는 header.jsp 에서는 절대 경로로 지정합니다.
				 왜냐하면 포함시키는 페이지의 경로가 모두 다르기 때문입니다.  -->
			<li><a href="<%= request.getContextPath()%>/community/list.jsp">커뮤니티</a></li>
			<li><a href="#">고객센터</a></li>
		</ul>
    <!-- 로그인 관련 내용 -->
		<nav>
			<ul id="nav">
				<!-- "user" 라는 이름의 애트리뷰트 가져오기 -->
				<c:if test="${user !=null }">
					<h4><c:out value="${user.name }"/> 님 환영합니다.</h4>
					<p><a href="<%= request.getContextPath()%>/logout.jsp">로그아웃</a></p>
				</c:if>
				<c:if test="${user ==null }">
					<p><a href="<%= request.getContextPath()%>/login.jsp">로그인</a></p>
					<p><a href="<%= request.getContextPath()%>/member/join.jsp">회원가입</a></p>
				</c:if>
			</ul>
		</nav>
	</header>
</body>
</html>