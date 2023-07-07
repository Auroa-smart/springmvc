<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
  <title>书籍列表</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../layui/css/layui.css">
  <link rel="script" href="../layui/layui.js">
  <style>
    body{
      width: 90%;
      margin:0 auto;
    }
  </style>
</head>
<body>
<%--<div class="container">--%>

<%--  <div class="row clearfix">--%>
<%--    <div class="col-md-12 column">--%>
<%--      <div class="page-header">--%>
<%--        <h1>--%>
<%--          <small>书籍列表 —— 显示所有书籍</small>--%>
<%--        </h1>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>

<%--  <div >--%>
<div class="right">
  <div class="location">
    <strong>你现在所在的位置是:</strong>
    <span>图书管理页面 >> 图书信息查看页面</span>
  </div>
    <div class="providerView">
      <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/book/searchBook">
        <fieldset>
          <legend class="le">搜索</legend>
          书籍名称：<input type="text" placeholder="请输入名称搜索" name="book_title" />
          <button class="layui-btn layui-btn-warm " type="submit">查询</button>
        </fieldset>
      </form>
    </div>
    <table id="ID-table-demo-init" class="layui-table" >
      <thead>
      <tr>
        <th>编号</th>
        <th>书名</th>
        <th>作者</th>
        <th>出版社</th>
        <th>ISBN</th>
        <th>类型</th>
        <th>出版日期</th>
        <th>数量</th>
        <th>售价</th>
        <th>操作</th>
      </tr>
      </thead>
      <tbody>
        <c:forEach var="book" items="${requestScope.get('booklist')}">
          <tr>
            <td>${book.getBook_id()}</td>
            <td>${book.getBook_title()}</td>
            <td>${book.getAuthor()}</td>
            <td>${book.getPublisher()}</td>
            <td>${book.getIsbn()}</td>
            <td>${book.getCategory_name()}</td>
            <td>${book.getPublication_date()}</td>
            <td>${book.getBook_quantity()}</td>
            <td>${book.getBook_price()}</td>
            <td>
              <a class='layui-btn' href="${pageContext.request.contextPath}/book/toUpdateBook?book_id=${book.getBook_id()}">修改</a>
              <a class='layui-btn' href="${pageContext.request.contextPath}/book/del/${book.getBook_id()}">删除</a>
            </td>
          </tr>
        </c:forEach>
        <tr>
          <td colspan="11" style="text-align: right;">共计：<label style="color:#ff5722; font-size: 20px;">${booklist.size()}</label>条数据，<a class="layui-btn layui-btn-warm " href="${pageContext.request.contextPath}/book/toAddBook">新增</a></td>
        </tr>
        </tbody>
      </table>
    </div>
<%--  </div>--%>
<%--</div>--%>
</body>
