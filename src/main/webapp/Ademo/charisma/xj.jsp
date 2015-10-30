<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <title>小静静</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/img/A-Blog.ico">
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            font-family: arial, helvetica, sans-serif;
            background-color: #212121;
            color: white;
            font-size: 28px;
            padding-bottom: 20px;
        }

        .error-code {
            font-family: 'Creepster', cursive, arial, helvetica, sans-serif;
            font-size: 200px;
            color: white;
            color: rgba(255, 255, 255, 0.98);
            width: 50%;
            text-align: right;
            margin-top: 5%;
            text-shadow: 5px 5px hsl(0, 0%, 25%);
            float: left;
        }

        .not-found {
            font-family: 'Audiowide', cursive, arial, helvetica, sans-serif;
            width: 45%;
            float: right;
            margin-top: 5%;
            font-size: 50px;
            color: white;
            text-shadow: 2px 2px 5px hsl(0, 0%, 61%);
            padding-top: 70px;
        }

        .clear {
            float: none;
            clear: both;
        }

        .content {
            text-align: center;
            line-height: 30px;
        }

        input[type=text] {
            border: hsl(247, 89%, 72%) solid 1px;
            outline: none;
            padding: 5px 3px;
            font-size: 16px;
            border-radius: 8px;
        }

        a {
            text-decoration: none;
            color: #9ECDFF;
            text-shadow: 0px 0px 2px white;
        }

        a:hover {
            color: white;
        }

    </style>
    <title>徐静静</title>
</head>
<body>

<p class="error-code">
    <img src="img/xj.png">
</p>

<p class="not-found"><a href="#" title="小屁静...">徐静静</a><br/>我想你了</p>

<div class="clear"></div>
<div class="content">
         <a href="http://user.qzone.qq.com/1604683124">感情都是有个转化...</a>
    <br><br>
    <a href="http://user.qzone.qq.com/1210460667" title="点还会有变化">Go Home</a>
    or
    <div class="clear"></div><br>
<div class="content">
        <a href="${pageContext.request.contextPath}/jKdemo/bootstrap/personalResume/perRes.jsp">查看个人简历</a>
</div>
    <br>

    <form>Search<br><br><input autofocus type="text" name="search"/></form>
    <br>
    
</div>

<% System.out.println("qq");%>
</body>
</html>
