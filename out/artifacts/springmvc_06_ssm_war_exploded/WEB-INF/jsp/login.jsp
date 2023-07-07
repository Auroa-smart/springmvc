<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <link rel="script" href="../layui/layui.js">
  </head>
  <body>
  <style>
    .demo-login-container{width: 320px; margin: 21px auto 0;}
    .demo-login-other .layui-icon{position: relative; display: inline-block; margin: 0 2px; top: 2px; font-size: 26px;}
    .login-image{
      flex-wrap: nowrap;
    }
  </style>
<%--  <img  class="login-image" src="p1.png">--%>
  <form class="layui-form" style="margin-top: 100px;" action="${pageContext.request.contextPath}/user/login" method="post">
    <div style="text-align: center; font-weight: bold;">
      <h1>登录</h1>
    </div>
    <div class="demo-login-container">
      <div class="layui-form-item">
        <div class="layui-input-wrap">
          <div class="layui-input-prefix">
            <i class="layui-icon layui-icon-username"></i>
          </div>
          <input type="text" name="username" value="" lay-verify="required" placeholder="用户名" lay-reqtext="请填写用户名" autocomplete="off" class="layui-input" lay-affix="clear">
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
        <div class="layui-row">
          <div class="layui-col-xs7">
            <div class="layui-input-wrap">
              <div class="layui-input-prefix">
                <i class="layui-icon layui-icon-vercode"></i>
              </div>
              <input type="text" name="captcha" value="" lay-verify="required" placeholder="验证码" lay-reqtext="请填写验证码" autocomplete="off" class="layui-input" lay-affix="clear">
            </div>
          </div>
          <div class="layui-col-xs5">
            <div style="margin-left: 10px;">
              <img src="https://www.oschina.net/action/user/captcha" onclick="this.src='https://www.oschina.net/action/user/captcha?t='+ new Date().getTime();">
            </div>
          </div>
        </div>
      </div>
<%--      <div class="layui-form-item">--%>
<%--        <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">--%>
<%--        <a href="#" style="float: right; margin-top: 7px;">忘记密码？</a>--%>
<%--      </div>--%>
      <div class="layui-form-item">
        <button type="submit" class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">登录</button>
      </div>
      <div class="layui-form-item">
        <button onclick="window.location.href='${pageContext.request.contextPath}/user/toHome'"  class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">取消登录</button>
      </div>
      <div class="layui-form-item demo-login-other">
        <label>社交账号登录</label>
        <span style="padding: 0 21px 0 6px;">
        <a href="javascript:;"><i class="layui-icon layui-icon-login-qq" style="color: #3492ed;"></i></a>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat" style="color: #4daf29;"></i></a>
        <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo" style="color: #cf1900;"></i></a>
      </span>
        或 <a href="${pageContext.request.contextPath}/user/toRegister" method="post">注册帐号</a>
      </div>
    </div>
  </form>

  <!-- 请勿在项目正式环境中引用该 layui.js 地址 -->
  <script src="../layui/layui.js"></script>
  <script>
    layui.use(function(){
      var form = layui.form;
      var layer = layui.layer;
      // 提交事件
      // form.on('submit(demo-login)', function(data){
      //   var field = data.field; // 获取表单字段值
        // 显示填写结果，仅作演示用
        // layer.alert(JSON.stringify(field), {
        //   title: '当前填写的字段值'
        // });
        // 此处可执行 Ajax 等操作
        // …
        // return false; // 阻止默认 form 跳转
      // });
    });
  </script>
  </body>
</html>
<%--  <style>--%>
<%--    .demo-login-container{width: 320px; margin: 21px auto 0;}--%>
<%--    .demo-login-other .layui-icon{position: relative; display: inline-block; margin: 0 2px; top: 2px; font-size: 26px;}--%>
<%--  </style>--%>
<%--  <form class="layui-form" style="margin-top: 100px;" action="${pageContext.request.contextPath}/user/login" method="post">--%>
<%--    <div style="text-align: center; font-weight: bold;">--%>
<%--      <h1>Login</h1>--%>
<%--    </div>--%>
<%--    <div class="demo-login-container">--%>

<%--      <div class="layui-form-item">--%>
<%--        <div class="layui-input-wrap">--%>
<%--          <div class="layui-input-prefix">--%>
<%--            <i class="layui-icon layui-icon-username"></i>--%>
<%--          </div>--%>
<%--          <input type="text" name="username" value="" lay-verify="required" placeholder="用户名" lay-reqtext="请填写用户名" autocomplete="off" class="layui-input" lay-affix="clear">--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="layui-form-item">--%>
<%--        <div class="layui-input-wrap">--%>
<%--          <div class="layui-input-prefix">--%>
<%--            <i class="layui-icon layui-icon-password"></i>--%>
<%--          </div>--%>
<%--          <input type="password" name="password" value="" lay-verify="required" placeholder="密   码" lay-reqtext="请填写密码" autocomplete="off" class="layui-input" lay-affix="eye">--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="layui-form-item">--%>
<%--        <div class="layui-row">--%>
<%--          <div class="layui-col-xs7">--%>
<%--            <div class="layui-input-wrap">--%>
<%--              <div class="layui-input-prefix">--%>
<%--                <i class="layui-icon layui-icon-vercode"></i>--%>
<%--              </div>--%>
<%--              <input type="text" name="captcha" value="" lay-verify="required" placeholder="验证码" lay-reqtext="请填写验证码" autocomplete="off" class="layui-input" lay-affix="clear">--%>
<%--            </div>--%>
<%--          </div>--%>
<%--          <div class="layui-col-xs5">--%>
<%--            <div style="margin-left: 10px;">--%>
<%--              <img src="https://www.oschina.net/action/user/captcha" onclick="this.src='https://www.oschina.net/action/user/captcha?t='+ new Date().getTime();">--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--        <div class="alert alert-danger">--%>
<%--            ${errorMessage}--%>
<%--        </div>--%>
<%--      <div class="layui-form-item">--%>
<%--        <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">--%>
<%--        <a href="#" style="float: right; margin-top: 7px;">忘记密码？</a>--%>
<%--      </div>--%>
<%--      <div class="layui-form-item">--%>
<%--        <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="demo-login">登录</button>--%>
<%--      </div>--%>
<%--      <div class="layui-form-item demo-login-other">--%>
<%--        <label>社交账号登录</label>--%>
<%--        <span style="padding: 0 21px 0 6px;">--%>
<%--        <a href="javascript:;"><i class="layui-icon layui-icon-login-qq" style="color: #3492ed;"></i></a>--%>
<%--        <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat" style="color: #4daf29;"></i></a>--%>
<%--        <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo" style="color: #cf1900;"></i></a>--%>
<%--      </span>--%>
<%--        或 <a href="register.jsp">注册帐号</a></span>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </form>--%>
<%--  <script src="../layui/layui.js"></script>--%>
<%--  <script>--%>
<%--    layui.use(function(){--%>
<%--      var form = layui.form;--%>
<%--      var layer = layui.layer;--%>
<%--      // 提交事件--%>
<%--      form.on('submit(demo-login)', function(data){--%>
<%--        var field = data.field; // 获取表单字段值--%>
<%--        // 显示填写结果，仅作演示用--%>
<%--        layer.alert(JSON.stringify(field), {--%>
<%--          title: '当前填写的字段值'--%>
<%--        });--%>
<%--        // 此处可执行 Ajax 等操作--%>
<%--        // …--%>
<%--        return false; // 阻止默认 form 跳转--%>
<%--      });--%>
<%--    });--%>
<%--  </script>--%>
<%--  </body>--%>
<%--</html>--%>
