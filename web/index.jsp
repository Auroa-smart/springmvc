<%@ page import="com.ssm.pojo.Users" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="script" href="layui/layui.js">
    <style>
        body{
            max-width: 100%;
            overflow-x: hidden;
            background: #85d7d0;
        }
        .layui-nav{
            background-color: #16baaa;
        }
        #body-content{
            width: 90%;
            margin:50px auto;
            background: white;
        }
        .book-type-title-box{
            height: 80px;
            text-align: center;

            font: bold 35px "黑体" ;
            background-color: pink;

        }
        .book-type-label{
            line-height: 80px;
        }
        table{
            margin: 0 auto;
        }
        td,tr{
            border: 1px solid lightgray;

        }
        .book{
            width: 260px;
            height: 300px;
        }
        .book-image{
            margin: 5px auto;
        }
        .book-title{
            text-align: center;
        }
        .author{
            font:16px "楷体";
            padding: 10px;
        }
        .price{
            font: bold 16px "黑体";
            color: red;
        }
    </style>
<%--    <style type="text/css">--%>
<%--        a {--%>
<%--            text-decoration: none;--%>
<%--            color: black;--%>
<%--            font-size: 18px;--%>
<%--        }--%>
<%--        h3 {--%>
<%--            width: 180px;--%>
<%--            height: 38px;--%>
<%--            margin: 100px auto;--%>
<%--            text-align: center;--%>
<%--            line-height: 38px;--%>
<%--            background: deepskyblue;--%>
<%--            border-radius: 4px;--%>
<%--        }--%>
<%--    </style>--%>
</head>
<body>

<%--<h3>--%>
<%--    <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>--%>
<%--</h3>--%>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">layout demo</div>
        <ul class="layui-nav" >
            <li class="layui-nav-item">
<%--                <a href="${pageContext.request.contextPath}/book/allBook">所有图书<span class="layui-badge">9</span></a>--%>
                <%
                    if(session.getAttribute("currentUser")!=null){
                        Users user = (Users) session.getAttribute("currentUser");
                      %>
                    <label style="font-size: 20px;"><%=user.getUsername()%>&nbsp;&nbsp;, 你好</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <%
                    }
                %>
            </li>
<%--            <li class="layui-nav-item">--%>
<%--                <a href="">小圆点<span class="layui-badge-dot"></span></a>--%>
<%--            </li>--%>
            <li class="layui-nav-item" lay-unselect>
                <a href="${pageContext.request.contextPath}/user/toLogin">
                    <img src="https://unpkg.com/outeres@0.0.10/demo/avatar/1.jpg" class="layui-nav-img">
                </a>
                <dl class="layui-nav-child">
                    <dd style="text-align: center;"><a href="${pageContext.request.contextPath}/book/allBook">查询图书</a></dd>
                    <dd style="text-align: center;"><a href="${pageContext.request.contextPath}/user/toLogin">登录</a></dd>
<%--                    <dd><a href="${pageContext.request.contextPath}/user/allUser">用户管理</a></dd>--%>
<%--                    <dd><a href="javascript:;">横线隔断</a></dd>--%>
                    <hr>
                    <dd style="text-align: center;"><a href="${pageContext.request.contextPath}/user/logout">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div><%--顶部广告图片--%>
    <div id="window-header" >
        <img src="img/head.png" alt="翻书花园" >
    </div>
    <div id="body-content">
        <div id="target-test" style="position: relative; padding: 16px;">
            <%--        不同类型书籍   --%>
                    <div class="book-type-title-box">
                        <label class="book-type-label">小说</label>
                    </div>
<%--            <div class="form">--%>
<%--                <form action="${pageContext.request.contextPath}/book/allBook">--%>
<%--                    <fieldset>--%>
<%--                        <legend class="le">搜索</legend>--%>
<%--                        书籍名称：<input type="text" placeholder="请输入名称搜索" name="name" />--%>
<%--                        <button type="submit">查询</button>--%>
<%--                    </fieldset>--%>
<%--                </form>--%>
<%--            </div>--%>

<%--                <%!--%>
<%--                    void print(JspWriter out) throws Exception {--%>
<%--                            for(int i = 1; i <= 3; i--){--%>
<%--&lt;%&ndash;//                                 out.println( "<h" + i+">" +"你好~" +"<"+"/h"+i+">" ) ;&ndash;%&gt;--%>
<%--                                 out.println( "<td><div class=\"book\" >\n" +--%>
<%--                                         "                            <img src=\"img/book1.jpg\">\n" +--%>
<%--                                         "                            <div class=\"info\">\n" +&ndash;%&gt;--%>
<%--                                        "                                <div class=\"book-title\">图书1</div>\n" +--%>
<%--                                        "                                <div class=\"author\">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</div>\n" +--%>
<%--                                        "                                <div class=\"price\">￥20.00</div>\n" +--%>
<%--                                        "                            </div>\n" +--%>
<%--                                        "                        </div></td>" ) ;--%>
<%--                            }--%>
<%--                              <%=print(out)%>>--%>
<%--               %>--%>

            <table>
                <tr>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'" >
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a href="${pageContext.request.contextPath}/book/allBook" class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="book" onclick="window.location.href='${pageContext.request.contextPath}/book/allBook'">
                            <img src="img/book1.jpg">
                            <div class="info">
                                <div class="book-title">图书1</div>
                                <a class="author">作者1 在人生极其悲惨的情况下，艾尔并没有灰心丧气...</a>
                                <div class="price">￥20.00</div>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
       </div>
    </div>
<script src="layui/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element;
        var layer = layui.layer;
        var util = layui.util;
        var $ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            menuLeft: function(othis){ // 左侧菜单事件
                layer.msg('展开左侧菜单的操作', {icon: 0});
            },
            menuRight: function(){  // 右侧菜单事件
                layer.open({
                    type: 1,
                    title: '更多',
                    content: '<div style="padding: 15px;">处理右侧面板的操作</div>',
                    area: ['260px', '100%'],
                    offset: 'rt', // 右上角
                    anim: 'slideLeft', // 从右侧抽屉滑出
                    shadeClose: true,
                    scrollbar: false
                });
            }
        });
    });
</script>
</body>
</html>