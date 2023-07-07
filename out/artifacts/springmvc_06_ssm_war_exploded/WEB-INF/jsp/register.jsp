<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
</head>
<body>
<style>
    .demo-login-container{width: 320px; margin: 21px auto 0;}
    .demo-login-other .layui-icon{position: relative; display: inline-block; margin: 0 2px; top: 2px; font-size: 26px;}
</style>
<form class="layui-form" style="margin-top: 100px;" action="${pageContext.request.contextPath}/user/register" method="post">
    <div style="text-align: center; font-weight: bold;">
        <h1>注册</h1>
    </div>
    <div class="demo-login-container">
        <div class="layui-form-item">
            <div class="layui-input-wrap">
                <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-username"></i>
                </div>
                <input type="text" name="username" value="" lay-verify="required" placeholder="用户名" lay-reqtext="请填写用户名" autocomplete="off" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-wrap">
                <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-password"></i>
                </div>
                <input type="password" name="password" value="" lay-verify="required" placeholder="密   码" lay-reqtext="请填写密码" autocomplete="off" class="layui-input" lay-affix="eye">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-wrap">
                <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-password"></i>
                </div>
                <input type="text" name="email" value="" lay-verify="required" placeholder="邮   箱" lay-reqtext="请填写邮箱" autocomplete="off" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-wrap">
                <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-password"></i>
                </div>
                <input type="text" name="phone" value="" lay-verify="required" placeholder="电   话" lay-reqtext="请填写号码" autocomplete="off" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-wrap">
                <div class="layui-input-prefix">
                    <i class="layui-icon layui-icon-password"></i>
                </div>
                <input type="text" name="address" value="" lay-verify="required" placeholder="地   址" lay-reqtext="请填写密码" autocomplete="off" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item">
            <button type="submit" class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">注册</button>
        </div>
        <div class="layui-form-item">
            <button onclick="window.location('${pageContext.request.contextPath}/user/toLogin')" class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">取消注册</button>
        </div>
    </div>
</form>
<script src="../layui/layui.js"></script>
<script>
    layui.use(function(){
        var form = layui.form;
        var layer = layui.layer;
        // 提交事件
        // form.on('submit(demo-login)', function(data){
        //   var field = data.field; // 获取表单字段值
        // // 显示填写结果，仅作演示用
        // layer.alert(JSON.stringify(field), {
        //   title: '确认注册吗'
        // });
        // // 此处可执行 Ajax 等操作
        // // …
        // return false; // 阻止默认 form 跳转
        // });
    });
</script>


</body>
</html>

