<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/css/member/formok.css" />
<%@ include file="../header.jsp"%>
<meta charset="UTF-8">
<title>안내</title>
<style>
body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
</style>
</head>
<body>
<div class="page-one">
	<h2>안내</h2>
	<div class="result-display">
		<div class="align-center">
			<c:if test="${!empty accessMsg}">
		        <img alt="회원가입 이미지" src="img/free-icon-done.png"></br>
				${accessMsg}
			</c:if>
			<c:if test="${empty accessMsg}">
				잘못된 접속입니다.
			</c:if>
			<p>
			<c:if test="${!empty accessUrl}">
			<input type="button" value="${accessBtn}"
			  onclick="location.href='${accessUrl}'">
			</c:if>
			<c:if test="${empty accessUrl}">
			<input type="button" value="홈으로"
			  onclick="location.href='/'">
			</c:if>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>