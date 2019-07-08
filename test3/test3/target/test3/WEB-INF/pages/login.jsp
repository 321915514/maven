<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:useBean id="msg" scope="request" type=""/>--%>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/6/28
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>图书馆用户登录</title>
    <style>
        #login_body{
            margin:0px;
            padding:0px;
            background-color: beige;

        }
        .form{
            height:300px;
            width:500px;
            margin-top:150px;
            padding-top:150px;
            padding-right:0px;

            display: flow;
        }


    </style>
</head>

<body>
<%--<c:forEach items="${msg}" var="map">--%>
<%--    ${map}--%>
<%--<a  href="/index/register">注册</a>--%>
<%--<h1>hello2342354</h1>--%>
<div id="login_body">
<%--  <div></div><div></div><div></div><div></div>--%>

    <div class="form">
    <form action="tologin"  method="post" >

        账号：<input type="text" name="username" id="name" placeholder="请输入账号....."><br>

        密码：<input type="password" name="password" id="password" placeholder="请输入密码...."><br>
        <span style="color: red">${msg}</span>

        <a href="/index/register" >
        <input type="button" value="注册" >
        </a>
            <input type="submit" value="登陆" >

</form>
    </div>
</div>
<%--</c:forEach>--%>
<%--<script>--%>
<%--function check(){--%>
<%--var name = document.getElementById("name");--%>
<%--var password=document.getElementById("password");--%>
<%--if(name == ""){--%>
<%--    alert("姓名不能为空！");--%>
<%--    return false;--%>
<%--}--%>
<%--if(password==""){--%>
<%--    alert("密码不能为空");--%>
<%--    return false;--%>
<%--}--%>

<%--}--%>
<%--</script>--%>
</body>
</html>
