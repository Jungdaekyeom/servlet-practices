<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String color = request.getParameter("c");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- if문처럼 행동한다. -->
	<c:choose>
		<c:when test='${param.c == "red" }'>
			<h1 style="color: red">Hello World</h1>
		</c:when>
		<c:when test='${param.c == "green" }'>
			<h1 style="color: green">Hello World</h1>
		</c:when>
		<c:when test='${param.c == "blue" }'>
			<h1 style="color: blue">Hello World</h1>
		</c:when>
		<c:otherwise>
			<h1 style="color: black">Hello World</h1>
		</c:otherwise>
	</c:choose>

	<!-- true면 출력, false면 출력이 안됨 -->
	<!-- <c:if test='false'> -->
	<!-- c:if는 else문이 없다. -->
	<!-- 
	<c:if test=true>
		<h1 style="color: red">Hello World</h1>
	</c:if>
	-->
	위는 태그 사용 ==============================
	<br /> 아래는 자바 사용

	<%
	if ("red".equals(color)) {
	%>

	<h1 style="color: red">Hello World</h1>

	<%
	} else if ("green".equals(color)) {
	%>

	<h1 style="color: green">Hello World</h1>

	<%
	} else if ("blue".equals(color)) {
	%>

	<h1 style="color: blue">Hello World</h1>

	<%
	} else {
	%>

	<h1 style="color: black">Hello World</h1>

	<%
	}
	%>



</body>
</html>