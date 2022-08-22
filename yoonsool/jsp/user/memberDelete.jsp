<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="member" class="com.study.member.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="member" />
<%
	IMemberService memberService = new MemberServiceImpl();
	memberService.removeMember(member);
%>

<script>
	alert('회원 탈퇴가 완료되었습니다.');
	location.href = './login.do'
</script>
</body>
</html>