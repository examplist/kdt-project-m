<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<div class="page-main">
	<h2>회원가입</h2>
	<form action="registerUser.do" id="register_form"
	                            modelAttribute="memberDTO" method="POST">	                                           
 		<ul>
			<li>
				<label for="memberid">아이디</label>
				<input path="memberid" name="memberid" placeholder="영문,숫자만 4~12자"/>
			</li>
			<li>
 				<label for="membername">이름</label>
				<input path="membername" name="membername"/>
			</li>
			<li>
				<label for="memberpw">비밀번호</label>
				<input type="password" path="memberpw" name="memberpw" placeholder="영문,숫자만 4~12자"/>
			</li>
			<li>
				<label for="phone">전화번호</label>
				<input path="phone" name="phone"/>
			</li>
			<li>
				<label for="email">이메일</label>
				<input path="email" name="email" />
			</li>
		</ul>
		<div class="align-center">
			<input type="submit" value="전송" />
			<input type="button" value="홈으로"
			   onclick="location.href='/'">
		</div>
	</form>
</div>
