<%@page import="com.study.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.study.board.service.BoardServiceImpl"%>
<%@page import="com.study.board.service.IBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<meta charset="UTF-8">
<title>글 수정</title>
<link rel="icon" type="image/x-icon"
	href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/boardWrite.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

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
		request.setAttribute("board", board);

		String userId = (String) session.getAttribute("USER");
		request.setAttribute("userId", userId);
		
		//TODO 글 삭제하기 전에 한 번 더 물어보기
	%>
	<c:if test="${board.memId ne userId }">
		<script>
			alert('글 수정 권한이 없습니다.');
			history.back();
		</script>
	</c:if>
	<c:if test="${board.memId eq userId }">
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
			<div class="contents">
				<div class="content01">
					<form action="./boardModify.do" id="editor_form" method="get">

						<table class="table">
							<tr>
								<td class="td_right"><input type="hidden" name="boNo"
									value="${board.boNo }"></td>
							</tr>
							<tr>
								<td class="td_left">제목</td>
								<td class="td_right"><input type="text"
									class="form-control input-sm" id="title" name="boTitle"
									value="${board.boTitle }" maxlength="30"></td>
							</tr>
							<tr>
								<td class="td_right"><input type="hidden" name="memId"
									value="${board.memId}" class="form-control input-sm"></td>
							</tr>
							<tr class=boContent>
								<td class="td_left">내용</td>
								<td class="td_right"><textarea name="boContent"
										id="content" rows="10">${board.boContent }</textarea></td>
							</tr>
						</table>

						<!-- 버튼 만들기 -->
						<div class="buttons">
							<a href="./board.do">
								<button type="button" class="btn btn-outline-primary">목록</button>
							</a>
							<button type="submit" class="btn btn-outline-primary">저장</button>
							<button type="submit" formaction="./boardDelete.do"
								class="btn btn-outline-primary">삭제</button>
								<!-- 확인하는 함수로 넣어서 수정하기 -->
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- contents 끝 -->
	</c:if>
	<footer id="page_footer">
		<!-- footer는 위에서 연결~ -->
	</footer>

</body>
</html>