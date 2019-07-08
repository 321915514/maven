<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/4
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${list}" var="user">
<form action="/index/update"  method="post">
    <label>id ：<input type="text" name="id" value="${user.id}" readonly="readonly"></label></br>
    <label>账号：<input type="text" name="username" value="${user.username}"></label></br>
    <label>密码：<input type="text" name="password" value="${user.password}"></label></br>
    <label>性别：
        <select  name="sex">
        <option value="1"<c:if test="${'1' eq user.sex}">selected</c:if>>男</option>
        <option value="0"<c:if test="${'0' eq user.sex}">selected</c:if>>女</option>
    </select></label></br>
    <label><input type="submit" value="确认"></label>
    <label><a href="/index/mysql">取消</a></label></br>

</form>
</c:forEach>
</body>
</html>
