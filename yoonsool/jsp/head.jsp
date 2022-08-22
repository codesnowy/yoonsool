<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	    <div class="container px-4 px-lg-5">
	         <div class="navbar-brand">우리술 윤술</div>
	        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
	        <div class="collapse navbar-collapse" id="navbarSupportedContent">
	            <ol class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
	                <li class="nav-item"><a class="nav-link" href="./home.do">홈</a></li>
	                <li class="nav-item"><a class="nav-link" href="./soolList.do">우리술 소개</a></li>
	                <li class="nav-item"><a class="nav-link" href='./barList.do'>매장 찾기</a></li>
	                <li class="nav-item"><a class="nav-link" href='./infoSool.do'>우리술 정보</a></li>
	                <li class="nav-item"><a class="nav-link" href='./board.do'>소통하기</a></li>    
	            </ol>
	            <c:if test="${USER eq null }">
	            <button class="btn btn-outline-primary" id="login" type="button" onclick="login()"> 로그인  </button>
	            </c:if>
	            <c:if test="${USER ne null }">
	                <button class="btn btn-outline-primary" id="mypage" type="button" onclick="myPage()"> 내 정보  </button>
	                <button class="btn btn-outline-primary" id="logout" type="button" onclick="logout()"> 로그아웃  </button>
	        	</c:if> 
	                   

	        </div>
	    </div>
	</nav>

<script>
 function logout(){
	 let ret = confirm("로그아웃 하시겠습니까?");
		if(ret){
			alert("로그아웃 되셨습니다.");
			location.href ="./login.do";
		}else{
			alert("로그아웃을 취소하셨습니다.");		
		}	
	}	 
 
 function myPage(){
		location.href ="./memberView.do";
	}	
 
 function login(){
		location.href ="./login.do";
	}	
</script>