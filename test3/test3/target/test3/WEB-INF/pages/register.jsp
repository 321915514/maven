<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/3
  Time: 8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.15/css/jquery.dataTables.css">
    <!-- jQuery -->
    <script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <!-- DataTables -->
    <script type="text/javascript" charset="utf8" src="http://cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>

    <title>Title</title>
</head>
<body>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String str = request.getParameter("str");//用request得到
request.setAttribute("str",str);
%>

<form action="/index/toregister" id="zhuche" method="post">
    <label>账号：<input id="username" type="text" name="username"></label></br>
<label>密码：<input id="password" type="password" name="password"></label></br>
    <select name="sex">
        <option value="1">男</option>
        <option value="0">女</option>
    </select>
    <label><input id="submit" type="submit" value="提交" ></label>
    <div >
        <h3 style="color: red" >${str}</h3></div>
    <a href="/index/login">返回登录</a>


</form>
<%--<script language="JavaScript">--%>
<%--    var click=document.getElementById('submit');--%>
<%--    function a() {--%>
<%--        alert(${str});--%>
<%--    }--%>
<%--    click.onclick=a;--%>
<%--</script>--%>
</body>
</html>
