<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

.write {
	padding: 1rem;
	min-height: 70vh;
}

.write .title {
	width: 90%;
	height: 2rem;
	margin-bottom: 1rem;
}

.write .content {
	width: 90%;
	min-height: 70vh;
}

.buttons {
	display: flex;
	padding: 1rem;
}

.buttons .cancel, .buttons .submit {
	margin-right: 1rem;
	width: 4rem;
	height: 2rem;
	display: flex;
	justify-content: center;
	align-items: center;
}

.buttons .submit {
	background-color: green;
	border: none;
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	cursor: pointer;
	font-size: 1rem;
}

.buttons .cancel {
	background-color: gray;
}

.buttons .cancel a {
	text-decoration: none;
	cursor: pointer;
	color: white;
	font-size: 1rem;
}
</style>
</head>
<body>
	<!-- header에 있는 c:set 변수들 바로 쓰면 된다. -->
	<%@ include file="../header.jsp"%>

	<section class="write">
		<h1>글 작성</h1>
		<c:choose>
			<c:when test="${fn:length(jstlMemName) == 0 }">
				<div class="not-logined">로그인을 하셔야만 글을 작성할 수 있습니다!</div>
			</c:when>
			<c:otherwise>
				<form action="article-create" method="POST">
					<div>
						<input type="text" name="title" id="title" class="title"
							placeholder="제목을 입력하세요." />
					</div>
					<div>
						<textarea name="content" id="content" class="content"
							placeholder="내용을 입력하세요."></textarea>
					</div>
					<input type="hidden" name="writer" value="${jstlMemName }" />
					<div class="buttons">
						<input type="submit" name="쓰기" class="submit" />
						<div class="cancel">
							<a href="/board/all?page=1">취소</a>
						</div>
					</div>
				</form>
			</c:otherwise>
		</c:choose>
	</section>

	<%@ include file="../footer.jsp"%>
</body>
</html>