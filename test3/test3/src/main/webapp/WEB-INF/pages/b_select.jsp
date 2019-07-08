<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/5
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍详情</title>
</head>
<body style="background: aquamarine" >


<div style="height:50%;width:auto;position:absolute;">
            <h2>书号：${book.b_id}</h2> </br>

            <h2>书名：${book.b_name}</h2> </br>

            <h2>作者：${book.b_author}</h2> </br>

            <h2>出版社：${book.b_pub}</h2> </br>
            <h2>出版日期:${book.b_record}</h2></br>
            <a href="/index/book">返回上一级</a>
</div>

</body>
</html>
