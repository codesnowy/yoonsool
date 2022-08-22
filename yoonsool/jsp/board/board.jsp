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
<title>우리술 윤술</title>
<link rel="icon" type="image/x-icon"
	href="./images/icon/yoonsolremove.png">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./css/style_board.css" />
<link rel="stylesheet" type="text/css" href="./css/head.css" />
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	window.onload = function() {
		$("#page_footer").load("./footer.do");
		$("#header").load("./head.do");
	}
</script>

</head>
<body>
	<jsp:useBean id="searchVO" class="com.study.board.vo.BoardSearchVO"></jsp:useBean>
	<jsp:setProperty property="*" name="searchVO" />
	<%
		IBoardService boardService = new BoardServiceImpl();
		List<BoardVO> boardList = boardService.getBoardList(searchVO);
		request.setAttribute("boardList", boardList);

		//세션에 저장된 아이디
		String userId = (String) session.getAttribute("USER");
	%>
	<c:if test="${USER eq null }">
		<script>
			alert('로그인 후 이용해주세요.')
			history.back()
		</script>
	</c:if>
	<c:if test="${USER ne null }">
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
		<!-- START : 검색 폼  -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form name="search" action="board.do" method="post" class="form-horizontal">
					<input type="hidden" name="curPage" value="${searchVO.curPage}"> 
					<input type="hidden" name="rowSizePerPage" value="${searchVO.rowSizePerPage}">
				</form>

			</div>
		</div>
		<!-- END : 검색 폼  -->
		<div class="table_container">
			<div class="button">
				<a href="./boardWrite.do"><button type="submit"
						class="btn btn-outline-primary">글쓰기</button></a>
			</div>

			<table class="table table-striped table-bordered table-hover">
				<colgroup>
					<col width="10%" />
					<col />
					<col width="15%" />
					<col width="20%" />
					<col width="10%" />
				</colgroup>
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${boardList }" var="boardList" varStatus="st">
						<tr>
							<td>${boardList.boNo }</td>
							<td><a href="./boardView.do?boNo=${boardList.boNo }">${boardList.boTitle }</a>
							</td>
							<td>${boardList.boMemName }</td>
							<td>${boardList.boRegDate }</td>
							<td>${boardList.boHit }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 게시판 끝 -->
		<nav class="text-center">
			<ul class="pagination">

				<!-- 첫 페이지  -->
				<li class="page-item disabled"><a class="page-link" href="boardList.do?curPage=1" data-page="1">
				<span aria-hidden="true">&laquo;</span></a></li>


				<!-- 이전 페이지 -->
				<c:if test="${searchVO.firstPage !=1 }">
					<li class="page-item disabled">
					<a class="page-link" href="./boardList.do?curPage=${searchVO.firstPage-1 }" data-page="${searchVO.firstPage-1 }"><span aria-hidden="true">&lt;</span></a></li>
				</c:if>

				<!-- 페이지 넘버링 ${searchVO } -->
				<c:forEach begin = "${searchVO.firstPage }" end="${searchVO.lastPage }" var="i">
					<c:if test="${i eq searchVO.curPage }">
						<li class="page-item active"><a class="page-link" href="#">${searchVO.curPage }</a></li>
					</c:if>
					<c:if test="${i ne searchVO.curPage }">
						<li class="page-item">
						<a class="page-link" href="./boardList.do?curPage=${i }" data-page="${i }">${i }</a></li>
					</c:if>
				</c:forEach>
				
				<!-- 다음  페이지  -->
				<c:if test="${searchVO.lastPage != searchVO.totalPageCount }">
						<li class="page-item">
						<a class="page-link" href="./boardList.do?curPage=${searchVO.curPage+1 }" data-page="${searchVO.curPage+1 }"><span aria-hidden="true">&gt;</span></a></li>
				</c:if>

				<!-- 마지막 페이지 -->
				<li class="page-item">
				<a class="page-link" href="./boardList.do?curPage=${searchVO.totalPageCount }" data-page="${searchVO.totalPageCount }"><span aria-hidden="true">&raquo;</span></a></li>
			</ul>
		</nav>
		<!-- END : 페이지네이션  -->
			<!-- 페이지네이션 끝-->
		</div>
		<footer id="page_footer">
			<!-- footer는 위에서 연결 -->
		</footer>
	</c:if>
<script type="text/javascript">
		
		$form=$("form[name='search']");
		$curPage=$form.find("input[name='curPage']");
		

		$('ul.pagination li a[data-page]').click(function(e) {		
			e.preventDefault();	
			$curPage.val($(this).attr("data-page"));
			$form.submit();
			
		}); // ul.pagination li a[data-page]
		
		$('#id_rowSizePerPage').change(function(e) {
			$curPage.val(1);
			$form.find("input[name=rowSizePerPage]").val($(this).val());
			$form.submit();
		}); // '#id_rowSizePerPage'.change

	
	</script>	
	
</body>
</html>