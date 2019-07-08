<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JSJSYS
  Date: 2019/7/5
  Time: 9:21
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
<a href="/index/addbook" >
    <input type="button" value="增加书籍"style="height: 50px;width: 100px;font-size: 20px;font-color:#B0E0E6;background-color:wheat;border-radius:100% " >
</a>
<table border="1" id="example">
    <thead>
    <tr>
        <td>序号</td>
        <td>书名</td>
        <td>作者</td>
        <td>出版社</td>
        <td>日期</td>
        <td>操作</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="map">
        <tr>
            <td>${map.b_id}</td>
            <td>${map.b_name}</td>
            <td>${map.b_author}</td>
            <td>${map.b_pub}</td>
            <td>${map.b_record}</td>
            <td>
                <a href="/index/bookselect?b_id=${map.b_id}">查看</a></br>
                <a href="/index/selectListbook?b_id=${map.b_id}">编辑</a></br>
                <a href="/index/b_delete?b_id=${map.b_id}">删除</a></br>

            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/index/index">返回</a>
<script>
    $(document).ready(function() {
        $('#example').DataTable(
            {
                // bsort:false,
                language: {
                    "decimal": "",//小数的小数位符号  比如“，”作为数字的小数位符号
                    "emptyTable": "没有数据哟~~",//没有数据时要显示的字符串
                    "info": "当前 _START_ 条到 _END_ 条 共 _TOTAL_ 条",//左下角的信息，变量可以自定义，到官网详细查看
                    "infoEmpty": "无记录",//当没有数据时，左下角的信息
                    "infoFiltered": "(从 _MAX_ 条记录过滤)",//当表格过滤的时候，将此字符串附加到主要信息
                    "infoPostFix": "",//在摘要信息后继续追加的字符串
                    "thousands": ",",//千分位分隔符
                    "lengthMenu": "每页 _MENU_ 条记录",//用来描述分页长度选项的字符串
                    "loadingRecords": "加载中...",//用来描述数据在加载中等待的提示字符串 - 当异步读取数据的时候显示
                    "processing": "处理中...",//用来描述加载进度的字符串
                    "search": "搜索",//用来描述搜索输入框的字符串
                    "zeroRecords": "没有找到",//当没有搜索到结果时，显示
                    "paginate": {
                        "first": "首页",
                        "previous": "上一页",
                        "next": "下一页",
                        "last": "尾页"
                    }
                }
            })
    });
</script>























</body>
</html>
