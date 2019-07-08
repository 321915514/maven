<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/3
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <thead>
    <tr>
        <td>id</td>
        <td>名称</td>
        <td>密码</td>
        <td>性别</td>
    </tr>
    </thead>
<c:forEach items="${list}" var="map">
    <tr>
    <td>${map.id}</td>
    <td>${map.username}</td>
    <td>${map.password}</td>
        <td><c:if test="${'1'==map.sex}">男</c:if>
       <c:if test="${'0'==map.sex}">女</c:if></td>
    </tr>
    </c:forEach>
</table>
<a href="/index/mysql">返回</a>
</body>
</html>
