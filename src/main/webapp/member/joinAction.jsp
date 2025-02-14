<%@page import="org.iclass.dao.BookUserDao"%>
<%@page import="org.iclass.dto.BookUser"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinAction.jsp</title>
</head>
<body>
<% 
	String id = request.getParameter("userid");  // request 한 객체(파라미터를 가져온다.)
	String name = request.getParameter("username");
    String password = request.getParameter("password");
    int age = Integer.parseInt(request.getParameter("age"));  // age 는 다른 객체와 다르게 int 라서 Integer.parseInt를 해줘야 한다. 
    String email = request.getParameter("email");
    		
    BookUserDao dao = BookUserDao.getInstance(); // dao 에서 싱글톤을 정의해주었기 때문에 써야 한다. 
//     dao.insert(new BookUser(id,email,name,password,age,null)); : 기존에 하던 방법-> 객체 추가할 수 없음.
	BookUser dto = BookUser.builder()
					.id(id)		// id() 메소드는 setId() 역할을 한다. 
					.email(email)
					.name(name)
					.password(password)
					.age(age)
					.build();   // @Builder 의 기능. 객체를 추가할 수 있게되는 방법. 앞으로는 이 방법으로 할꺼임.  
	dao.insert(dto);
%>
<script>
   alert('회원가입이 완료되었습니다.') // alert의 기능: 사용자가 수행한 작업에 대한 경고 메시지나 알림을 띄우기 위해 사용됩니다.
   if(confirm('로그인 하시겠습니까?')){  // confirm 의 기능: 사용자가 경고 메시지를 보고 "확인" 또는 "취소"를 선택하도록 요구하는 대화 상자를 띄웁니다.
	   location.href='../login.jsp'
   }else{
   location.href='/jspBoard/'
   }
</script>

</body>
</html>