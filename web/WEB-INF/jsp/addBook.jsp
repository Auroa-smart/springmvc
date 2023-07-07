<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
  <title>新增书籍</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../layui/css/layui.css">
  <link rel="script" href="../layui/layui.js">
    <style>
        body{
            width: 90%;
            margin:0 auto;
        }
        /*#update-box{*/
        /*    margin:20px auto;*/
        /*    width: 60%;*/
        /*    height: auto;*/
        /*}*/
        /*body .myskin .layui-layer-content {*/
        /*    overflow: visible;*/
        /*}*/
    </style>
</head>
<body>
<%--<div class="container">--%>
<%--  <div class="row clearfix">--%>
<%--    <div class="col-md-12 column">--%>
<%--      <div class="page-header">--%>
<%--        <h1>--%>
<%--          <small>新增书籍</small>--%>
<%--        </h1>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>

<style>
    .demo-login-container{width: 320px; margin: 21px auto 0;}
    .demo-login-other .layui-icon{position: relative; display: inline-block; margin: 0 2px; top: 2px; font-size: 26px;}
</style>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>图书管理页面 >> 新增图书页面</span>
    </div>
    <div class="providerView">

<!-- 给容器追加 class="layui-form-pane"，即可显示为方框风格 -->
  <form class="layui-form layui-form-pane" action="${pageContext.request.contextPath}/book/addBook" method="post" lay-filter="test1">
<%--    <input type="text" value="ins" name="operation" hidden>--%>
    <div class="layui-form-item">
      <label class="layui-form-label">ID</label>
      <div class="layui-input-block">
        <input type="text" name="book_id" autocomplete="off" placeholder="请输入" lay-verify="required" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">书名</label>
      <div class="layui-input-block">
        <input type="text" name="book_title" autocomplete="off" placeholder="请输入" lay-verify="required" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">作者</label>
      <div class="layui-input-block">
        <input type="text" name="author" placeholder="请输入" lay-verify="required" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">出版社</label>
      <div class="layui-input-block">
        <input type="text" name="publisher" placeholder="请输入" autocomplete="off" class="layui-input">
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label">出版日期</label>
        <div class="layui-input-inline">
          <input type="text" name="publication_date" class="layui-input" id="ID-laydate-demo" placeholder="yyyy-MM-dd">
        </div>
      </div>
    </div>

    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label">ISBN</label>
        <div class="layui-input-inline">
          <input type="text" name="isbn" autocomplete="off" class="layui-input">
        </div>
      </div>
      <div class="layui-form-mid layui-text-em">请务必填写ISBN号</div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">数量</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="book_quantity" placeholder="￥" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label">售价</label>
        <div class="layui-input-inline" style="width: 100px;">
          <input type="text" name="book_price" placeholder="￥" autocomplete="off" class="layui-input">
        </div>
      </div>
    </div>
    <div class="layui-form-item">
      <div class="layui-inline">
        <label class="layui-form-label">类型</label>
        <div class="layui-input-inline" style="width: 100px;">
          <input type="text" name="category_name" placeholder="爱情" autocomplete="off" class="layui-input">
        </div>
      </div>
    </div>
    <div class="layui-form-item layui-form-text">
      <label class="layui-form-label">简介</label>
      <div class="layui-input-block">
        <%--            <textarea name="book_description" placeholder="请输入内容" class="layui-textarea"></textarea>--%>
        <input type="text" name="book_description" placeholder="请输入内容" class="layui-textarea"></input>
      </div>
    </div>
    <div class="layui-form-item">
      <button type="submit" class="layui-btn" lay-submit lay-filter="demo2">添加</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>

  </form>
</div>
</div>
</body>
</html>
