<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	padding: 1rem;
	margin: 0;
}

.code {
	padding: 0.5rem;
	margin: 0;
	font-size: 2rem
}

.message {
	padding: 0.5rem;
	margin: 0;
	font-size: 1.2rem
}
</style>
</head>
<body>
	<h1 class="code">오류 코드: ${errorCode }</h1>
	<c:choose>
		<c:when test="${errorCode == 404 }">
			<div class="message">죄송합니다. 잘못된 페이지에 접근하셨습니다.</div>
		</c:when>
		<c:when test="${errorCode >= 400 && errorCode < 500 }">
			<div class="message">죄송합니다. 요청이 잘못되었습니다.</div>
		</c:when>
		<c:when test="${errorCode >= 500 }">
			<div class="message">죄송합니다. 당사에서 문제가 발생했습니다. 조속히 해결하겠습니다.</div>
		</c:when>
		<c:otherwise>
			<div class="message">죄송합니다. 문제가 발생했습니다.</div>
		</c:otherwise>
	</c:choose>
</body>
</html>