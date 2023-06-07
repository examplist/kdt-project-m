<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="/css/header.css" />
<link rel="stylesheet" href="/css/footer.css" />
<link rel="stylesheet" href="/css/member/form2.css" />

<%@ include file="../header.jsp"%>
<style>
body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
</style>
<div class="page-main">
	<h2>회원가입</h2>
	<form action="registerUser.do" id="register_form"
		modelAttribute="memberDTO" method="POST">


		     <label for="memberid">아이디</label>
		     <input path="memberid" name="memberid" placeholder="아이디를 입력해주세요. (4글자 이상)" required/></br>
		     
			 <label for="membername">이름</label>
			 <input path="membername" name="membername"placeholder="이름을 입력해주세요. (2글자 이상)" required /></br>
			 
			 <label for="memberpw">비밀번호</label>
			 <input type="password" path="memberpw" name="memberpw" placeholder="비밀번호를 입력해주세요. (4글자 이상)"required /></br>
			 
			 <label for="phone">전화번호</label>
		     <input path="phone" name="phone" placeholder="번호를 입력해주세요. (ex.010-1234-1234)"required /></br>
		     
			 <label for="email">이메일</label>
		     <input path="email" name="email" placeholder="이메일을 입력해주세요. (ex.name.mail.com)"required /></br>

		<div id="btn">
			<input type="submit" value="전송" /></br> <input type="button" value="홈으로"
				onclick="location.href='/'">
		</div>
	</form>
</div>
<%@ include file="../footer.jsp"%>