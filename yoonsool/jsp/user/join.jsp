<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.service.IMemberService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%	request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="icon" type="image/x-icon"	href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./css/join.css" />
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>회원가입</h2>
		<form id="join" name="join" method="post" action="./memberRegist.do" >
			<table class="table table-bordered table-hover">
				<tbody>
					<tr>
						<th><ion-icon name="person-circle" size="large"> </ion-icon></th>
						<th>아이디</th>
						<td>
						<input type="text" name="memId" id="memId" maxlength="50" placeholder="알파벳과 숫자로 4글자 이상"
							required="required" pattern="\w{4,}" 
							title="빈칸 없이 알파벳과 숫자로 4글자 이상 입력해주세요.">								
							<button type = "button" name="dupIdCheck" class="btn btn-outline-primary" onclick="checkDupId()" 
						value="checkDupId">중복확인</button>
						<input type="hidden" id="idDuplChk" name="idDuplChk" value="ok">
						</td>				
					</tr>
					
					<tr>
						<th><ion-icon name="key-outline" size="large"></ion-icon></th>
						<th>비밀번호</th>
						<td><input type="password" name="memPass" id="memPass" placeholder="알파벳과 숫자로 6글자 이상"
							class="form-control input-sm" required="required"
							pattern="\w{6,}" title="알파벳과 숫자로 6글자 이상 입력해주세요."></td>
					</tr>
					
					<tr>
						<th><ion-icon name="key-outline" size="large"></ion-icon></th>
						<th>비밀번호 확인</th>
						<td><input type="password" name="passCheck" id="passCheck" placeholder="위와 동일하게 입력"
							class="form-control input-sm" pattern="\w{6,}" required="required"></td>
					</tr>
					
					<tr>
						<th><ion-icon name="person-add-outline" size="large"></ion-icon></th>
						<th>닉네임</th>
						<td><input type="text" name="memName" id="memName"
							class="form-control input-sm" required="required" placeholder="2글자 이상" 
							pattern="{2,15}" title="2글자 이상 입력해주세요."></td>
					</tr>
					<tr>
						<th><ion-icon name="mail-open-outline" size="large"></ion-icon></th>
						<th>이메일</th>
						<td><input type="email" name="memMail" id="memMail" placeholder="이메일"
							class="form-control input-sm"></td>
					</tr>		
					<tr>	
					<td colspan="3">
					<button type="submit" class="btn btn-outline-primary">회원가입</button>
					</td>
					</tr>
			</tbody>
		</table>
		</form>
	</div>
	
<script type="text/javascript">

	function checkDupId() {	
		let memId = $("form[name='join']").find("#memId").val();
		$.ajax({
			url: "getLoginIdDup.wow"
			,type:"post"
			,data: {memId : memId}	
			,success:function(code){
				if(code == "ok"){
					alert("사용 가능한 아이디입니다.");
					//중복이 아닐 때 idDuplChk 값을 없앤다. 
					$("form[name='join']").find("#idDuplChk").val("");				
				}
				else{
					alert("이미 사용 중인 아이디입니다. 다시 입력해주세요.");
					//중복일 때 memId 값을 없앤다.
					$("form[name='join']").find("#memId").val("");
				}
			}
			,error:function(){
				alert("error");
			}
		});		
	};
</script>	
</body>
</html>