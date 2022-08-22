<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon"
	href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/memberView.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	window.onload = function() {
		$("#page_footer").load("./footer.do");
		$("#header").load("./head.do");
	}
</script>
<%
	String userId = (String) session.getAttribute("USER");
	IMemberService memberService = new MemberServiceImpl();

	MemberVO member = memberService.getMember(userId);
	request.setAttribute("member", member);
%>

</head>


<body>
	<div id="header">
		<!-- header -->
	</div>
	<div id="wrap">
		<div class="intro_bg">
			<div class="intro_text">
				<h1>내 정보 수정</h1>
			</div>
		</div>
		<div class="container">
			<form id="myPage" method="post" action="./memberModify.do">
				<table class="table table-bordered table-hover">
					<tbody>
						<tr>
							<th><ion-icon name="person-circle" size="large">
								</ion-icon></th>
							<th>아이디</th>
							<td>${member.memId }<input type="hidden" name="memId" id="memId"
								value="${member.memId }"></td>
							</td>
						</tr>

						<tr>
							<th><ion-icon name="key-outline" size="large"></ion-icon></th>
							<th>비밀번호</th>
							<td><input type="password" name="memPass" id="memPass"
								class="form-control input-sm" required="required" value="${member.memPass }"
								pattern="\w{6,}" title="알파벳과 숫자로 6글자 이상 입력해주세요."></td>
						</tr>
						<tr>
							<th><ion-icon name="person-add-outline" size="large"></ion-icon></th>
							<th>닉네임</th>
							<td><input type="text" name="memName"
								class="form-control input-sm" value="${member.memName }"
								required="required" pattern="{3,15}"
								title="3글자 이상 15글자 이하로 입력해주세요.">
							</td>
						</tr>
						<tr>
							<th><ion-icon name="mail-open-outline" size="large"></ion-icon></th>
							<th>이메일</th>
							<td><input type="email" name="memMail"
								class="form-control input-sm" required="required"
								value='${member.memMail }'>
						</tr>
						<tr>
							<td colspan="3">
								<div class="buttons">
									<button type="submit" class="btn btn-outline-primary">수정</button>
									<button type="submit" formaction="./memberDelete.do"
										class="btn btn-outline-primary">회원 탈퇴</button>
									<!-- 확인하는 함수로 넣어서 수정하기 -->
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<footer id="page_footer">
			<!-- footer는 위에서 연결~ -->
		</footer>
	</div>
</body>
</html>