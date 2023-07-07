<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
  <title>修改信息</title>
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
<style>
  .demo-login-container{width: 320px; margin: 21px auto 0;}
  .demo-login-other .layui-icon{position: relative; display: inline-block; margin: 0 2px; top: 2px; font-size: 26px;}
</style>
<div class="right">
  <div class="location">
    <strong>你现在所在的位置是:</strong>
    <span>图书管理页面 >> 图书信息修改页面</span>
  </div>
  <div class="providerView">
  <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <input type="hidden" name="book_id" value="${book.getBook_id()}"/>
    <div class="layui-form-item">
      <label class="layui-form-label" style="flex-wrap: nowrap">书籍名称</label>
      <div class="layui-input-block">
        <input type="text" name="book_title"  value="${book.getBook_title()}" autocomplete="off" placeholder="请输入" lay-verify="required" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">书籍数量</label>
      <div class="layui-input-block">
        <input type="text" name="book_quantity"  value="${book.getBook_quantity()}"autocomplete="off" placeholder="请输入" lay-verify="required" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">书籍单价</label>
      <div class="layui-input-block">
        <input type="text" name="book_description" value="${book.getBook_price() }" autocomplete="off" placeholder="请输入" lay-verify="required" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <button type="submit" class="layui-btn" lay-submit lay-filter="demo2">提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </form>
  </div>
</div>

</body>
