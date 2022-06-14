<%@page import="com.study.login.vo.UserVO"%>
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
		//로그인창 왔을 떄 AUTH쿠키가 없으면  msg와 함께  로그인폼 나오게하기
		String msg = request.getParameter("msg");
		if (msg != null) {
			if (msg.equals("idOrPwIsEmpty")) {
				out.print("아이디 또는 비밀번호를 입력해주세요");
			} else if (msg.equals("idOrPwIsIncorr")) {
				out.print("아이디 또는 비밀번호를 틀렸습니다.");
			}
		}

		CookieUtils cookieUtils = new CookieUtils(request);
		
		//생성한 SAVE_ID 쿠키를 받아서 ID가 입력되어있어야함. 
		UserVO user = (UserVO)session.getAttribute("USER_INFO");
		String userId = "";
		String checkBox = "";

		if (cookieUtils.exists("SAVE_ID")) {
			userId = cookieUtils.getValue("SAVE_ID");
			checkBox = "checked";
			checkBox = "checked='checked'";
		}
				
		if (user==null) {
	%>
	<div class="container">
		<form action="loginCheck.jsp" class="loginForm">
			<h2>로그인</h2>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th>아이디</th>
						<td><input type="text" name="userId"
							class="form-control input-sm" value="<%=userId%>"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="userPass"
							class="form-control input-sm"></td>
					</tr>
					<tr>
						<td colspan="2"><label><input type="checkbox"
								name="rememberMe" value="Y" <%=checkBox%>>ID 기억하기</label></td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit" class="btn btn-primary btn-sm pull-right">로그인</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- container -->
	<%
		} else { //로그인 성공 : 로그인창 왔을 때 AUTH쿠키가 있으면 로그인 중, logout버튼만 보이기
	%>

	로그인 중 <br>
	id : <%=user.getUserId() %> <br>
	이름 : <%=user.getUserName() %> <br>
	역할 : <%=user.getUserRole() %> <br>
	
	<a href="logout.jsp" class="btn btn-success btn-sm">로그아웃</a>
	<%
		}
	%>
	
</body>
</html>
