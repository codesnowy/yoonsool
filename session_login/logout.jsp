<%@page import="com.study.common.util.CookieUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

<%
	//로그아웃은 쿠키 지우고 login.jsp로 redirect 
	
	session.removeAttribute("USER_INFO");
	response.sendRedirect("login.jsp");
%>

</body>
</html>
