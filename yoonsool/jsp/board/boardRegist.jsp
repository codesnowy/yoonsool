<%@page import="com.study.board.service.IBoardService"%>
<%@page import="com.study.board.service.BoardServiceImpl"%>
<%@page import="com.study.board.vo.BoardSearchVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%	request.setCharacterEncoding("utf-8"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록하기</title>
</head>
<body>
<jsp:useBean id="board" class="com.study.board.vo.BoardVO"></jsp:useBean>
<jsp:setProperty name="board" property="*" />
<%
	IBoardService boardService = new BoardServiceImpl();
	board.getBoContent().replace("/r/n", "<br>");
	boardService.registBoard(board);	
%>
	<script>
		alert('글이 등록되었습니다')
		location.href = './board.do'
	</script>

</body>
</html>