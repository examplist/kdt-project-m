<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/cart/reset.css">
    <style>
        .container{
            position: absolute;
            left: 50%;
            top: 50%;
            width: 500px;
            height: 640px;
            margin-left: -250px;
            margin-top: -400px;
            /* border: 1px solid red; */
        }
        img{
            display: block;
            width: 300px;
            height: 300px;
            margin: 0 auto;
            padding-left: 64px;
        }
        h1{
            width: 300px;
            margin: 64px  auto 120px;
            text-align: center;
            font-size: 54px;
        }
        button{
            display: block;
            width: 300px;
            height: 80px;
            margin: 0 auto;
            border: none;
            border-radius: 8px;
            background-color: lightgreen;
        }
        button>a{
            font-weight: 700;
            font-size: 24px;
        }
    </style>
</head>
<body>
<div class="container">
        <img src="../assets\index/buyok/buyok.png" alt="">
        <h1>구매완료</h1>
        <button><a href="./index.html">홈으로</a></button>
</div>
</body>
</html>