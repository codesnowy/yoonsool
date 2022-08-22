<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="icon" type="image/x-icon" href="./img/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./css/join.css" />
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
</head>
<body>
	<div class="container">
		<h1>비밀번호 찾기</h1>
		<form id="findPw" name="findPw" method="post" action="sendMail.do">
			<table class="table table-bordered table-hover">
				<tbody>
					<tr>
						<th><ion-icon name="person-circle" size="large">
							</ion-icon></th>
						<th>아이디</th>
						<td><input type="text" name="memId"
							class="form-control input-sm" required="required"
							pattern="\w{4,}">
					</tr>
					<tr>
						<th><ion-icon name="mail-open-outline" size="large"></ion-icon></th>
						<th>가입 시 입력한 이메일</th>
						<td><input type="email" name="memMail" id="memMail"
							class="form-control input-sm" required="required"></td>
					</tr>
				</tbody>
			</table>
			<button type="submit" id="btn_join" name="btn_join" 
				class="btn btn-outline-primary">전송</button>
		</form>
	</div>
</body>
</html>