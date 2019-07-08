<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/4
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
</head>
<body>
<form action="/index/addbookSave" method="post">
<%--    书号：<input type="text" name="b_id"><br>--%>
    书名；<input type="text" name="b_name"><br>
    作者；<input type="text" name="b_author"><br>
    出版社；<input type="text" name="b_pub"><br>
    出版日期；<input type="text" name="b_record"><br>

    <input type="submit" value = "增加">
</form>
</body>
</html>
