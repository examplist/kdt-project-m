<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/cart/reset.css" />
<link rel="stylesheet" href="/css/cart/cart.css" />
<script type="module" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="module" src="/js/cart.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ include file="../header.jsp"%>
	<section>
		<h2>장바구니</h2>
		<ul class="itemlist">
			<!-- <script id="items" type="text/template"> -->
			<li id="" class="on">
				<img class="p_img" src="./assets/index/상의/2.jpg" />
				<div class="p_info">
					<span class="title">-</span>
					수량<span class="count">-</span>
					<span class="price"><b>109955</b>원</span>
				</div>
				<img class="on chack" src="/img/icon/check-box.png" alt="" />
			</li>
			<!-- </script> -->
		</ul>
		<span class="total" style="font-size: 20px">109,955원</span>
		<button style="width: 100px">
			<a href="./buyok.html" style="font-size: 20px">결제하기</a>
		</button>
	</section>
<%@ include file="../footer.jsp"%>
</body>
</html>