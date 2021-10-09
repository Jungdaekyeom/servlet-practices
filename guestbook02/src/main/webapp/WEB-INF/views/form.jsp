<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@ page import="com.douzone.guestbook.dao.GuestBookDao"%>

<%
String no = request.getParameter("no");
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	
	<form method="post" action="/guestbook02/gb?a=delete">
		<h2>비밀번호</h2>
		<input type="hidden" name="no" value="<%=no%>"> 
		<input type="password" name="password">
		
		<input type="submit" value="확인">
	</form>
	<br>
	<a href="/guestbook02/gb?a=list">메인으로 돌아가기</a>
</body>
</html>