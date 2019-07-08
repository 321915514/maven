<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/5
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${list}" var="user">
    <form action="/index/updatebook"  method="post">
        <label>id ：<input type="text" name="b_id" value="${user.b_id}" readonly="readonly"></label></br>
        <label>名字：<input type="text" name="b_name" value="${user.b_name}"></label></br>
        <label>作者：<input type="text" name="b_author" value="${user.b_author}"></label></br>
        <label>出版社：<input type="text" name="b_pub" value="${user.b_pub}"></label></br>
        <label>日期：<input type="text" name="b_record" value="${user.b_record}"></label></br>
<%--        <label>性别：--%>
<%--            <select  name="sex">--%>
<%--                <option value="1"<c:if test="${'1' eq user.sex}">selected</c:if>>男</option>--%>
<%--                <option value="0"<c:if test="${'0' eq user.sex}">selected</c:if>>女</option>--%>
<%--            </select></label></br>--%>
        <label><input type="submit" value="确认"></label>
        <label><a href="/index/book">取消</a></label></br>

    </form>
</c:forEach>

</body>
</html>
