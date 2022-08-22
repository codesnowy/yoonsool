<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="icon" type="image/x-icon"	href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>
	<div class="login_form">
		<h1>로그인 후 이용해주세요</h1>
		<form name="loginForm" action="./loginCheck.do" method="post"> 
			<div class="int-area">
				<input type="text" name="memId" id="memId" autocomplete="off"
					required > <label for="memId">아이디</label>
			</div>
			<div class="int-area">
				<input type="password" name="memPw" id="memPw" autocomplete="off"
					required> <label for="memPw">비밀번호</label>
			</div>
			<div class="buttons">
				<button type="submit" class="button1" onclick="login()">로그인</button>
			</div>
		</form>
		<div class="caption">
			<ul class="caption_ul">
				<li><a href="./join.do">회원가입</a></li>
				<li><a href="./findPw.do">비밀번호 찾기</a></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		function login() {
			let memId = document.getElementById("memId").value; 
			let memPw = document.getElementById("memPw").value; 

			if (memId === null || memId === undefined || memId === "") {
				alert("아이디가 입력되지 않았습니다.");
				return false;
			} else if (memPw === null || memPw === undefined || memPw === "") {
				alert("비밀번호가 입력되지 않았습니다.");
				return false;
			} 
		}
	</script>
</body>
</html>