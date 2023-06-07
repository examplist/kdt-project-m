<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
    <title>Document</title>
</head>
<body>
    <!-- header 추가 X -->
    <div class="container">
        <img src="/img/product/buyok.png" >
        <h1>구매완료</h1>
        <button><a href="/">홈으로</a></button>
    </div>
</body>
</html>