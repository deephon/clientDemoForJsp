<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<% request.setAttribute("webPath", request.getContextPath());%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>YKSUI框架 - 登录</title>
    <link rel="stylesheet" type="text/css" href="${webPath}/css/greenlogin.css" />
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
    <script src="${webPath}/js/login.js"></script>
</head>
<body>
<div class="logo-name" >项目名称</div>
<div class="wrapper">
    <div class="container">
        <h1>Login</h1>
        <from:form class="form" method="post" action="/login" commandName="user" >
            <from:input path="username" type="text" placeholder="用户名" class="login_input"  />
            <from:input path="password" type="password" placeholder="密码" class="login_input" />
            <from:button type="submit" class="login_button btn">登录</from:button>
            <!--<p __del class="text-muted text-center">
                <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html">注册一个新账号</a>
            </p>-->
        </from:form>
        <div text="${msg}" style="color: red"></div>
        <!--<div class="modify_password">
            <a href="http://userinfo.youkeshu.com/Auser/forgot/password/" target="_blank">忘记密码</a>|
            <a href="http://userinfo.youkeshu.com/Auser/change/password/" target="_blank">修改密码</a> |
            <a href="http://userinfo.youkeshu.com" target="_blank">修改信息</a>
        </div>-->
    </div>
</div>

</body>
</html>
