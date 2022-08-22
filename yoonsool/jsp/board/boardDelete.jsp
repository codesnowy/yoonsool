<%@page import="com.study.board.service.BoardServiceImpl"%>
<%@page import="com.study.board.service.IBoardService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="board" class="com.study.board.vo.BoardVO"></jsp:useBean>
<jsp:setProperty name="board" property="*" />
<%
	IBoardService boardService = new BoardServiceImpl();
	boardService.removeBoard(board);
%>
	<script>
	
		alert('글이 삭제되었습니다')
		location.href = './board.do'
	</script>

</body>
</html>