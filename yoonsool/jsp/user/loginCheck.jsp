<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	<%
		String memId = request.getParameter("memId");
		request.setAttribute("memId", memId);
		String memPw = request.getParameter("memPw");
		request.setAttribute("memPw", memPw);

		IMemberService memberService = new MemberServiceImpl();

		MemberVO member = memberService.getMember(memId);
		request.setAttribute("member", member);
	%>



	<c:if test="${memId ne member.memId }">
		<script>
			alert('아이디 혹은 비밀번호가 틀립니다.')
			history.back()
		</script>
	</c:if>
	<c:if test="${memPw ne member.memPass }">
		<script>
			alert('아이디 혹은 비밀번호가 틀립니다.')
			history.back()
		</script>
	</c:if>
	<c:if test="${memId eq member.memId and memPw eq member.memPass}">
		<script>
			alert('로그인 되었습니다.')
			location.href = './home.do'
			<% 	
				System.out.println(memId);
				session.setAttribute("USER", memId); 
				session.setMaxInactiveInterval(60*60*24);
				%>
		</script>
	</c:if>

</body>
</html>