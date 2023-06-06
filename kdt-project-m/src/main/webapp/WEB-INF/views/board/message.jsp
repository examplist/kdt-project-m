<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KDT 쇼핑</title>
</head>
<style>
	body {
		padding: 0;
		margin: 0;
	}

	.message {
		height: 70vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	.container div {
		margin-bottom: 1rem;
		font-size: 1.5rem;
		display: flex;
		justify-content: center;
	}
	
	.link-home a {
		text-decoration: none;
	}
	
</style>
<body>
	<!-- header에 있는 c:set 변수들 바로 쓰면 된다. -->
	<%@ include file="../header.jsp"%>

	<section class="message">
		<div class="container">
			<div>${message }</div>
			<div class="link-home">
				<a href="/">홈으로</a>
			</div>
		</div>
	</section>
	
	<%@ include file="../footer.jsp"%>
</body>
</html>