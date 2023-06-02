<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/member/login.css">
<script src="/js/jquery-3.6.4.min.js"></script>
<link rel="stylesheet" href="/css/footer.css" />
<title>KDT 쇼핑</title>
</head>
<body>

	<h1>Login</h1>
	<form name="login" action="login" method="post">
		<input name="memberid" id="user_id" type="text" placeholder="ID를 입력하세요. (4자리 이상)" autofocus><br>
		<input name="memberpw" id="user_pw" type="password" placeholder="비밀번호를 입력하세요. (4자리 이상)" ><br>
		 <input id="loginbtn" type="submit" value="로그인">
	</form>
	<div>
		<input type="button" value="회원가입" onclick="location.href='form.html'">
	</div>

<%@ include file="../footer.jsp"%>
</body>

</html>