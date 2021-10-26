<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String col = request.getParameter("c");
String row = request.getParameter("r");

int nCol = Integer.parseInt(col);
int nRow = Integer.parseInt(row);
%>
<!-- http://localhost:8080/jstlel/table01.jsp?c=10&r=10 라고 입력하면 해당 table을 볼 수 있음 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1' cellspacin="0" cellpadding='10' )>

		<%
			for (int i = 0; i < nRow; i++) {
		%>
		<tr>
			<%
				for (int j = 0; j < nCol; j++) {
			%>
			<td>cell(<%=i %>, <%=j %>)
			</td>

			<%
				}
			%>

		</tr>
		<%
			}
		%>
	</table>
</body>
</html>