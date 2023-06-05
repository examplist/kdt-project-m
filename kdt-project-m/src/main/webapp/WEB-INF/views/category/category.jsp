<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/category/styles.css" rel="stylesheet" />
<title>Insert title here</title>
<script src="/js/jquery-3.6.4.min.js"></script>

</head>
<body>
 <%@ include file="../header.jsp"%> 

<%-- <h1 text-align="center">${categoryList.category }</h1>
 --%>
 
<div style="margin-top: 100px"/>
<c:forEach items="${categoryList }" var="ind">
<div class="products">
<a href='productDetail?id=${ind.id}'>
<%-- <a href="${ind.id }.html"> --%>
        <img src='/img/product/${ind.id }.jpg'>
        <p class="product-title">${ind.title }</p>
        <p class="price">${ind.price }</p>
      </a>
</c:forEach>
<div class="clearfix"></div>
</div>



<%@ include file="../footer.jsp"%> 
</body>

</html>