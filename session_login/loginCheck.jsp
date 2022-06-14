<%@page import="java.util.Map"%>
<%@page import="com.study.common.util.CookieUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.study.login.vo.UserVO"%>
<%@page import="com.study.common.util.UserList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
		String userId = request.getParameter("userId");
		String userPass = request.getParameter("userPass");
		String checkbox = request.getParameter("rememberMe");
		
		// 세션에 저장하는 것은 대문자! 띄어쓰기 할 때는 _를 사용한다. 
		if(checkbox != null){
			Cookie cookie = CookieUtils.createCookie("SAVE_ID",userId,(60*60*24*7));
			response.addCookie(cookie);
		}else{
			Cookie cookie = CookieUtils.createCookie("SAVE_ID","",0);
			response.addCookie(cookie);
		}
		
		if (userId.isEmpty() || userPass.isEmpty()) {
			response.sendRedirect("login.jsp?msg=idOrPwIsEmpty");
		} else { //id가 UserList에 없는 회원이거나 pw가 다르면
			UserList userList = new UserList();
			UserVO user = userList.getUser(userId);
			if (user == null) {
				response.sendRedirect("login.jsp?msg=idOrPwIsIncorr");
			} else {
				if (!user.getUserPass().equals(userPass)) {
					response.sendRedirect("login.jsp?msg=idOrPwIsIncorr");
				} else { 
					//id, pw모두 맞으면 session에 "USER_INFO"라는 이름으로 해당 UserVO 저장하기
					session.setAttribute("USER_INFO", new UserVO(user.getUserId(), user.getUserName(), user.getUserPass(), user.getUserRole()));
					response.sendRedirect("login.jsp");
				}
			}
		}
	%>


</body>
</html>
