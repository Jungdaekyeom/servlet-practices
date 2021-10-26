<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL(forEach Tag) Test</h1>

	<!-- fn:length(list)는 리스트의 길이를 뽑는건가? -->
	<c:set var='count' value='${fn:length(list) }' />

	<!-- 반복문 -->
	<c:forEach items='${list }' var='vo' varStatus='status'>
		<!-- status.index가 한개씩 증가하므로, count = count-1효과를 볼 수 있다. -->
		[${count-status.index }] (${status.index }:${status.count }) [${vo.no }:${vo.name }] <br />
	</c:forEach>
</body>
</html>