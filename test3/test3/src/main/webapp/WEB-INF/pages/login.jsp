<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>图书检索系统登录</title>
    <link rel="shortcut icon" href="favicon.ico">
    <style type="text/css">



        *{
            margin: 0;
            padding: 0;
            box-sizing:border-box;
        }
        a{
            text-decoration:none;

        }
        a:hover{
            color:red;
            font-size:25px;
        }


        #login_header{
            height: 88px;
            border:solid;
            background: aquamarine;

        }

        #login_header .h_center{
            width:1200px;
            height: 88px;
            margin:0 auto;



        }


        #login_header p{
            float:left;
            text-align:center;
            width:880px;
            font-size: 10px;
            border:1px solid #ffb4a8;
            margin-top:20px;
            margin-left: 316px;

            padding:3px;
            color:#6c6c6c;
            background: #fef2f2;
        }

        #login_body{
            height:600px;
            background-image: url(https://cdn.pixabay.com/photo/2017/07/28/17/20/agriculture-2549245_1280.jpg);
            background-position:center center;

            background-size:cover;
        }

        #login_body .login_center{
            width:1200px;
            height:600px;

            margin:0 auto;
            position:relative;
        }

        #login_body .login_center .login_bg {
            width:350px;
            height:351px;
            background: rgba(255,255,255,0.9);
            position:absolute;
            left:883px;
            top:143px;
            padding:30px;



        }


        #login div {
            height: 40px;
            margin-top: 20px;
            float: left;


        }

        <!-- 设置span属性 高度 宽度 内联块 背景 浮动  边框（粗细和颜色）-->


             #login span{
                 height:40px;
                 width: 40px;
                 display:inline-block;

                 border:1px solid #ccc;

             }
        <!-- 设置span 的username的图片-->

             #login .username span{
                 background-image: url("../images/userName_Icon.png");
             }

        <!-- 设置span 的password的图片-->

             #login .password span{
                 background-image: url("../images/password_Icon.png");
             }


        #login input{
            width: 280px;
            height: 39px;
            text-indent:6px;
        }

        #login .login_button input{
            background-color: #f40;
            border:none;
            width:280px;
            color:white;
            font-size:16px;
        }
        #login_footer{
            height:300px;
            text-align:center;
            padding-top:30px;
        }
        #login_footer .copyright{
            padding-top:20px;
        }
        #login_footer .link a{
            margin-left:5px;
            margin-right:5px;
            color:#666;
        }

    </style>

<body>


<div id="login_header">
    <p>为确保你的安全需要及正常使用，请正确使用，如有情况我们概不负责</p>
</div>
<div id="login_body" >
    <div class="login_center">
        <div class="login_bg">
            <h>登录界面</h>
            <form action="tologin" id="login"  method="post" >
                <div class="username">
                    账号：<input type="text" name="username" id="name" placeholder="请输入账号.....">

                </div>
                <div class="password">
                    密码：<input type="password" name="password" id="password" placeholder="请输入密码....">
                </div>

                <div class="login_button" >
                    <input type="submit" value="登录" >
                </div>
                <div class="forget_password">
                    <span style="color: red">${msg}</span>

                    <a href="/index/register" >
                        <input type="button" value="注册" >
                    </a>
                </div>
            </form>

        </div>

    </div>
</div>
<div id="login_footer">
    <div class="link">
        <a href="about_us.html">关于我们</a>

    </div>
    <div class="copyright">
        Copyright @ 2019   我们小组版权所有

    </div>
</div>

</body>
</html>