<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<div class="page-main">
	<h2>회원가입</h2>
	<form:form action="registerUser.do" id="register_form"
	                            modelAttribute="memberDTO">	                                           
 		<ul>
			<li>
				<label for="memberid">아이디</label>
				<form:input path="memberid" name="memberid" placeholder="영문,숫자만 4~12자"/>
			</li>
			<li>
 				<label for="membername">이름</label>
				<form:input path="membername" name="membername"/>
			</li>
			<li>
				<label for="memberpw">비밀번호</label>
				<form:password path="memberpw" name="memberpw" placeholder="영문,숫자만 4~12자"/>
			</li>
			<li>
				<label for="phone">전화번호</label>
				<form:input path="phone" name="phone"/>
			</li>
			<li>
				<label for="email">이메일</label>
				<form:input path="email" name="email" />
			</li>
		</ul>
		<div class="align-center">
			<form:button>전송</form:button>
			<input type="button" value="홈으로"
			   onclick="location.href='/'">
		</div>
	</form:form>
</div>
