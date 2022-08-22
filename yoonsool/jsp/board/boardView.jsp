<%@page import="com.study.board.vo.BoardVO"%>
<%@page import="com.study.board.service.BoardServiceImpl"%>
<%@page import="com.study.board.service.IBoardService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon"   href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/boardView.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	window.onload = function() {
		$("#page_footer").load("./footer.do");
		$("#header").load("./head.do");
	}
</script>
</head>
<body>

<%
	int boNo = Integer.parseInt(request.getParameter("boNo"));
	IBoardService boardService = new BoardServiceImpl();
	
	BoardVO board = boardService.getBoard(boNo);
	boardService.increaseHit(boNo);
	request.setAttribute("board", board);
	
	String userId = (String) session.getAttribute("USER");
	request.setAttribute("userId", userId);

%>

<div id="wrap">
	<div id="header">
	<!-- header -->
	</div>
	<div class="intro_bg">
        <div class="intro_text">
            <h1>소통하기</h1>
            <br>
            <h4>자유롭게 이야기를 나누어 보세요</h4>
        </div>
    </div>
    <!-- intro_bg 끝 -->
    <div class="table_container">
    <!-- 글 내용 -->
    <table class="table table-bordered ">
    <tbody>
		<tr>
			<th>글번호</th>
			<td>${board.boNo }</td>
		</tr>    	
		<tr>
			<th>등록일자</th>
			<td>
				${board.boModDate ne null ? board.boModDate : board.boRegDate}
			</td>
		</tr>
		<tr>
			<th>글제목</th>
			<td>${board.boTitle }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${board.boMemName }</td>
		</tr>
		<tr>
			<td class = content colspan="2"><p style="white-space: pre-line;">${board.boContent }</p></td>
		</tr>
    </tbody>
    </table>
    <!-- 글 내용 끝-->	
	<!-- 목록 수정 -->
		<div class="buttons">
			<a href="./board.do"><button type="button" class="btn btn-outline-primary">목록</button></a>
			<c:if test="${board.memId eq userId }">
			<a href="./boardEdit.do?boNo=${board.boNo }"><button type="button" class="btn btn-outline-primary">수정</button></a>
			</c:if>
		</div>
	</div>   
	<footer id="page_footer">
    <!-- footer는 위에서 연결~ -->
	</footer>
</div>
</body>
</html>