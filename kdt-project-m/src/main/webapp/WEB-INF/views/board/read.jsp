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

.article {
	padding: 1rem;
}

.article .content {
	min-height: 60vh;
}

.meta {
	display: flex;
}

.meta div {
	margin-right: 1rem;
}

.manage {
	display: flex;
	padding: 1rem;
}

.manage div {
	margin-right: 1rem;
	width: 4rem;
	height: 2rem;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: green;
}

.manage div a {
	text-decoration: none;
	cursor: pointer;	
	color: white;
	font-size: 1rem;
}

.delete-button {
	width: 4rem;
	height: 2rem;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: red;
	cursor: pointer;	
	color: white;
	font-size: 1rem;
	border: none;	
}
</style>
</head>
<body>
	<!-- header에 있는 c:set 변수들 바로 쓰면 된다. -->
	<%@ include file="../header.jsp"%>

	<section class="article">
		<h1>${articleData.title }</h1>
		<div class="meta">
			<div>${articleData.writer.membername }</div>
			<div>${articleData.writedate }</div>
		</div>
		<hr />
		<div class="content">${articleData.content }</div>
	</section>

	<c:if test="${jstlMemName == articleData.writer.memberid }">
		<section class="manage">
			<div>
				<a href="/article-update?id=${articleData.id }">수정</a>
			</div>
			<form action="article-delete" method="POST">
				<input type="hidden" name="id" value="${articleData.id }" />
				<input type="submit" value="삭제" class="delete-button" />
			</form>
		</section>
	</c:if>

	<%@ include file="../footer.jsp"%>
</body>
</html>