<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@ page import="com.douzone.guestbook.vo.GuestBookVo"%>
<%@page import="java.util.List"%>

<%
List<GuestBookVo> list = new GuestBookDao().findAll();

String no = request.getParameter("no");
String password = request.getParameter("password");

GuestBookDao dao = new GuestBookDao();
GuestBookVo vo = new GuestBookVo();

vo.setNo(Long.parseLong(no));
vo.setPassword(password);
dao.delete(vo);

response.sendRedirect("/guestbook01");
%>