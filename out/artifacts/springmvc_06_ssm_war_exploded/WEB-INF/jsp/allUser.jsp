<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page isELIgnored="false" %>--%>
<%@include file="header.jsp" %>
<html>
<head>
    <title>所有用户</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <style>
        body{
            width: 90%;
            margin:0 auto;
        }
    </style>
</head>
<body>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>用户管理页面 >> 用户信息查看页面</span>
    </div>
    <div class="providerView">

        <%--<div class="container">--%>
        <%--    <div class="row clearfix">--%>
        <%--        <div class="col-md-12 column">--%>
        <%--            <div class="page-header">--%>
        <%--                <h1>--%>
        <%--                    <small>用户列表 —— 显示所有用户</small>--%>
        <%--                </h1>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <%--    </div>--%>

        <%--    <div >--%>
        <div>
            <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/user/searchUser">
                <fieldset>
                    <legend class="le">搜索</legend>
                    用户名：<input  type="text" placeholder="请输入用户名搜索" name="username"/>
                    <button class="layui-btn layui-btn-warm " type="submit">查询</button>
                </fieldset>
            </form>
        </div>
        <table id="ID-table-demo-init" class="layui-table">
            <thead>
            <tr>
                <th>用户ID</th>
                <th>用户名</th>
                <th>邮箱</th>
                <th>电话</th>
                <th>地址</th>
                <th>注册日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${requestScope.get('userlist')}">
                <tr style="flex-wrap: nowrap;">
                    <td>${user.getUser_id()}</td>
                    <td>${user.getUsername()}</td>
                    <td>${user.getEmail()}</td>
                    <td>${user.getPhone()}</td>
                    <td>${user.getAddress()}</td>
                    <td>${user.getCreated_time()}</td>
                    <td>
                        <a class='layui-btn'
                           href="${pageContext.request.contextPath}/user/toUpdateUser?user_id=${user.getUser_id()}">修改</a>
                        <a class='layui-btn'
                           href="${pageContext.request.contextPath}/user/del/${user.getUser_id()}">删除</a>
                    </td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="7" style="text-align: right;">共计：<label
                        style="color:#ff5722; font-size: 20px;">${userlist.size()}</label>条数据，<a
                        class="layui-btn layui-btn-warm "
                        href="${pageContext.request.contextPath}/user/toAddUser">新增</a>
                    <a class="layui-btn layui-btn-warm " href="${pageContext.request.contextPath}/user/toHome">返回</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
