<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KDT 쇼핑</title>
<style>
body {
	padding: 0;
	margin: 0;
}

.board {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.board h1 {
	text-align: center;
}

.board .links {
	display: flex;
	justify-content: space-around;
	margin-bottom: 1rem;
	width: 100%;
}

.board .links div {
	border: 1px solid blue;
}

.board .links div a {
	text-decoration: none;
	color: black;
	cursor: pointer;
}

.board table {
	width: 60vw;
	margin-bottom: 1rem;
}

.board table, .board th, .board td {
	border: 1px solid black;
	border-collapse: collapse;
}

.board th {
	background-color: brown;
	color: white;
	font-weight: 700;
}

.board .edit-button {
	text-align: center;
}

.board .edit-button button {
	background-color: yellow;
	border: none;
	display: flex;
	justify-content: center;
	align-items: center;
	cursor: pointer;
}

.board .not-logined {
	height: 70vh;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 1.2rem;
}

.board .pagination a {
	display: inline-block;
	padding: 0.5rem;
	text-decoration: none;
	color: black;
	font-size: 1.1rem;
}

.board .pagination .curPage {
	color: violet;
}
</style>
</head>
<body>
	<!-- header에 있는 c:set 변수들 바로 쓰면 된다. -->
	<%@ include file="../header.jsp"%>

	<section class="board">
		<h1>자유게시판</h1>
		<section class="links">
			<div>
				<a href="/article-create">글쓰기</a>
			</div>
			<c:choose>
				<c:when test="${writerTarget == 'all' }">
					<div>
						<a href="/board/my">내가 쓴 글로 이동</a>
					</div>
				</c:when>
				<c:otherwise>
					<div>
						<a href="/board/all">모두가 쓴 글로 이동</a>
					</div>
				</c:otherwise>
			</c:choose>
		</section>
		<c:choose>
			<c:when
				test="${writerTarget != 'all' && fn:length(jstlMemName) == 0 }">
				<div class="not-logined">로그인을 해주시기 바랍니다.</div>
			</c:when>
			<c:otherwise>
				<table>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성 날짜</th>
						<th>이동</th>
					</tr>
					<c:forEach items="${articles }" var="article">
						<tr class="article-${article.id }">
							<td>${article.id }</td>
							<td>${article.title }</td>
							<td>${article.writer.membername }</td>
							<td>${article.writedate }</td>
							<td class="link-article"><a
								href="/article?id=${article.id }">이동</a></td>
						</tr>
					</c:forEach>
				</table>
				<div class="pagination">
					<c:forEach var="i" begin="1" end="${countPages }">
						<c:if test="${param.page == i }">
							<a href="/board/all?page=${i }" class="curPage">${i }</a>
						</c:if>
						<c:if test="${param.page != i }">
							<a href="/board/all?page=${i }">${i }</a>
						</c:if>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</section>

	<%@ include file="../footer.jsp"%>
</body>
</html>