<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<head lang="zh">
  <title>管理员系统</title>
  <style>
    *{
      margin: 0;
      padding: 0;
    }
    body{
      font-size: 12px;
      /*background: #16baaa;*/
      margin: 0 auto;
      /*width: 95%;*/
    }
    .clear:after{
      content: '';
      display: block;
      clear: both;
    }
    a{
      text-decoration: none;
    }
    li{
      list-style: none;
    }

    /*公共样式，头部*/
    .publicHeader{
      height: 48px;
      line-height: 48px;
      font-size: 14px;
      background:#16baaa;
    }
    .publicHeader h1{
      float: left;
      color: #fff;
      font-size: 22px;
      padding-left:80px;
      text-shadow: 2px 1px #000;
      background:  30px center no-repeat;

    }
    .publicHeaderR{
      float: right;
      color: #fff;
      margin-right: 50px;

    }
    .publicHeaderR p{
      display: inline-block;
      font-weight: bold;
    }
    .publicHeaderR a{
      width: 50px;
      height: 28px;
      display: inline-block;
      border: 1px solid #ffbf99;
      background: #ffb800;
      line-height: 28px;
      text-align: center;
      border-radius: 4px;
      font-weight: bold;
      color: #fff;
    }
    .publicHeaderR a:hover,.publicHeaderR a:active{
      border: 1px solid #192b02;
      border-radius: 4px;
      font-weight: bold;
      background: #ffb800;
    }

    /*公共部分主体内容*/
    .publicMain{
      border-top: 1px solid #c2ccd5;
      display: flex;  /*变为弹性盒模型*/
      display: -webkit-flex;
      background: #fff;
    }
    /*左边*/
    .left{
      width: 200px;
      background:  0 0 repeat-y;
      margin-right: 10px;
      /*height: 520px;*/
      min-height: 520px;
      font-size: 16px;
    }
    .leftH2{
      width: 140px;
      height: 30px;
      border-radius: 4px;
      line-height: 30px;
      text-align: center;
      color: #fff;
      background: #16baaa;
      margin: 10px  auto;
      box-shadow:4px 4px rgba(212,212,212,0.7);
    }
    .leftH2 span{
      width: 10px;
      height: 10px;
      display: inline-block;
      background: #16baaa;
      border-radius: 50%;
    }
    .span1{
      margin-right: 10px;
    }
    .span2{
      margin-left: 12px;
    }

    .list{
      margin: 0 20px;
      font-weight: bold;
    }
    .list li{
      height: 40px;
      line-height: 40px;
      border-bottom: 1px solid rgba(212,212,212,0.5) ;
    }
    /*.list li:nth-child(1){*/
    /*  background: url("../images/img.png") 0  center no-repeat;*/
    /*}*/
    /*.list li:nth-child(2){*/
    /*  background: url("../images/img.png") 0  center no-repeat;*/
    /*}*/
    /*.list li:nth-child(3){*/
    /*  background: url("../images/img.png") 0  center no-repeat;*/
    /*}*/
    /*.list li:nth-child(4){*/
    /*  background: url("../images/img.png") 0  center no-repeat;*/
    /*}*/
    .list li:nth-child(5){
      background: 0  center no-repeat;
    }
    .list li:hover{
      background-color: #acd5f5;
      border-radius: 4px;
    }
    .list li:active, #active{
      background-color: #ffb800;
      border-radius: 4px;
    }
    .list a{
      color:#16baaa;
      display: inline-block;
      padding-left: 40px;
      width: 95%;
    }

    /*右边*/
    .right{
      width: 100%;
    }
    /*右边所在位置栏*/
    .location{
      height: 30px;
      line-height: 30px;
      border: 1px solid #e6eaf6;
      border-radius: 8px;
      background: wheat;
      color: #4a4a4a;
      padding-left: 30px;

    }
    .location strong{
      background: wheat;
      display: inline-block;
      padding-left: 30px;
    }
    .location span{
      color: #16baaa;
      font-weight:  bold;
    }
    /*搜索信息栏*/
    .search{
      height:50px;
      line-height:50px;
      background: #f6fafd;
      padding-left: 24px;
      color: #000;
    }
    .search input[type='text']{
      width: 200px;
      height: 30px;
      outline: none;
      padding-left: 10px;
      border: 1px solid #aaaaaa;
      border-radius: 4px;
    }
    .search input[type='button']{
      margin-left: 20px;
      width: 100px;
      padding: 0 20px;
      height: 30px;
      border: 1px solid #ffb800;
      border-radius: 4px;
      color: #fff;
      font-weight: bold;
      background:#ffb800  10px center no-repeat;
    }
    .search input[type='button']:focus{
      outline: none;
      background-color: #ffb800;
    }
    .search a{
      width: 80px;
      padding-left:40px;
      float: right;
      margin: 10px 60px;
      height: 30px;
      line-height: 30px;
      border: 1px solid #16baaa;
      border-radius: 4px;
      color: #fff;
      font-weight: bold;
      background:#16baaa 10px center no-repeat;
      display: inline-block;
    }
    .search a:hover,.search a:active{
      background-color: #16baaa;
    }
    .search span{
      margin-left: 10px;
    }
    .search select{
      margin: 10px;
      width: 100px;
      height: 30px;
      border-radius: 4px;
      border: 1px solid #16baaa;
      outline: none;
    }

    /*底部*/
    .footer{
      width: 100%;
      line-height: 40px;
      text-align: center;
      color: #fff;
    }

    .search-button{
      font-size: 12px;
      margin: 0 0 10px 20px;
      width: 100px;
      padding: 0 0px;
      height: 30px;
      border: 1px solid #ffb800;
      border-radius: 4px;
      color: #fff;
      font-weight: bold;
      background:#ffb800 10px center no-repeat;
    }
    .search-button:focus{
      outline: none;
      background-color: #ffb800;
    }

    * {
      margin: 0;
      padding: 0;
    }

    .formBox {
      position: relative;
    }
    /*输入框里默认输入字体*/
    ::-webkit-input-placeholder {
      color: rgb(190, 188, 188);
      /*font-style: italic;*/
    }
    /*供应商管理页面*/
    .providerTable {
      width: 100%;
      border: 1px solid #ccc;
    }

    .providerTable tr {
      height: 30px;
      line-height: 30px;
      text-align: center;
    }

    .providerTable tr:nth-child(odd) {
      background: #f6f7f9;
    }

    .providerTable tr:hover {
      background: #e9f9ca;
    }

    .firstTr {
      border: 1px solid #d6dfe6;
      background: linear-gradient(to bottom, #f3f8fc, #ebf4f9, #e3f1fa, #e0f0fd, #d8e9fd);
    }

    .firstTr th {
      border-right: 2px solid rgba(209, 218, 223, 0.4);
    }

    /*.providerTable td a {*/
    /*  margin-top: 10px;*/
    /*  display: inline-block;*/
    /*  margin-right: 10px;*/
    /*}*/

    /*供应商管理页面-->下面的信息查看页面*/
    /*.providerView {*/
    /*  margin: 20px 0;*/
    /*  font-size: 18px;*/
    /*  line-height: 30px;*/
    /*  padding-top: 30px;*/
    /*  border: 1px dashed #3d4f1b;*/
    /*}*/

    /*.providerView strong {*/
    /*  display: inline-block;*/
    /*  width: 200px;*/
    /*  !*text-align: right;*!*/
    /*}*/

    /*.providerView span {*/
    /*  color: #bd644e;*/
    /*}*/

    /*.providerView a {*/
    /*  margin-left: 0px;*/
    /*  position: relative;*/
    /*  top: 60px;*/
    /*  width: 30px;*/
    /*}*/

    .page-num-ul li
    {
      float:left;
    }
    .page-num-ul li a
    {
      display:inline-block;
      padding:3px 5px;
      margin:0px 3px;
      border:1px solid #b8b8b8;
    }
    /*.page-num-ul a:hover,.page-num-ul .thisclass*/
    /*{*/
    /*  border:1px solid #c5063f;*/
    /*  background-color:#c5063f;*/
    /*  color:#FFF;*/
    /*  text-decoration:none;*/
    /*}*/

    .page-go-form input,label,button
    {
      margin:0px 5px;
    }
  </style>
</head>
<body>
<!--头部-->
<header class="publicHeader" style="background: #16baaa;">
  <h1>管理员系统</h1>
  <div class="publicHeaderR">
    <p ><span id="hello">下午好！</span><span > </span></p>
    <a href="${pageContext.request.contextPath}/user/logout">退出</a>
  </div>
</header>

<!--主体内容-->
<section class="publicMain ">
  <div class="left">
    <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
    <nav>
      <ul class="list">
        <li ><a href="${pageContext.request.contextPath}/user/allUser">用户管理</a></li>
        <li><a href="${pageContext.request.contextPath}/book/allBook">图书管理</a></li>
        <li><a href="${pageContext.request.contextPath}/user/toUpdateAdmin">密码修改</a></li>
        <li><a href="${pageContext.request.contextPath}/user/logout">退出系统</a></li>
      </ul>
    </nav>
  </div>
  <%-- </section>这是主体的一部分 另外的section结束标签在 其他主体的结束位置--%>
  <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
  <input type="hidden" id="referer" name="referer" value="<%=request.getHeader("Referer")%>"/>
</body>
</html>
