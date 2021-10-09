<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@ page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@page import="java.util.List"%>

<%
List<GuestBookVo> list = new GuestBookDao().findAll();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" value="확인"></td>
			</tr>
		</table>
	</form>

	<br>

	<table width=500 border=1>
		<%
		for (GuestBookVo vo : list) {
		%>
		<form action="deleteform.jsp?no=<%=vo.getNo()%>" method="post">
			<table border="1" cellpadding="5" cellspacing="2">
				<tr>
					<td align=right width="200">No</td>
					<td><%=vo.getNo()%></td>
				</tr>
				<tr>
					<td align=right width="200">Name</td>
					<td><%=vo.getName()%></td>
				</tr>
				<tr>
					<td align=right width="200">Date</td>
					<td><%=vo.getReg_date()%></td>

				</tr>
				<tr>
					<td align=right width="200">Message</td>
					<td><%=vo.getMessage()%></td>
				</tr>
				<tr>
					<td align=right width="200">삭제</td>
					<td><input type="submit" value="삭제"></td>
				</tr>
			</table>
		</form>
		<br>
		<%
		}
		%>

	</table>
</body>
</html>