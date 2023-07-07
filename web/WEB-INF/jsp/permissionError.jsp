<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2023/5/27
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>没有权限</title>
    <style>
        h1{
            text-align: center;
        }
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }
        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: #16baaa;
            border-radius: 4px;
        }

    </style>
</head>
<body>
<h1 style="color: red">你没有访问权限!</h1>
<h3>
    <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>
</h3>

</body>
</html>
