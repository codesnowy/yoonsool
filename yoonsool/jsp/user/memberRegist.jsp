<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
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
<title>가입 되는 부분</title>
</head>
<body>
<jsp:useBean id="member" class="com.study.member.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="member" />
<%
	IMemberService memberService = new MemberServiceImpl();
	request.setAttribute("member", member);
	String passCheck = request.getParameter("passCheck");
	request.setAttribute("passCheck", passCheck);
	String idDuplChk = request.getParameter("idDuplChk");
	request.setAttribute("idDuplChk", idDuplChk);
	boolean isDuple = memberService.dupleCheck(member.getMemId());
	request.setAttribute("isDuple", isDuple);
%>

	<c:if test='${idDuplChk eq "ok" }'>
		<script>
			alert('아이디 중복 체크를 해주세요');
			history.back();
		</script>
	</c:if>
	<c:if test="${passCheck ne member.memPass }">
		<script>
			alert('비밀번호를 다시 확인해 주세요.');
			history.back();
		</script>
	</c:if>
	<c:if test='${idDuplChk ne "ok" and passCheck eq member.memPass }'>
		<script>
			alert('회원 가입이 완료되었습니다.');
			<%memberService.registMember(member);%>
			location.href = './login.do'
		</script>
	</c:if>



</body>
</html>