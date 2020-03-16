<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 02:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>登陆页面</title>
    <link rel="stylesheet" href="css/index.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
</head>
<body>

    <!-- 整体部分 -->
    <div id="main">
        <!-- 学校logo -->
        <div id="div_logo">
            <img class="img1" src="img/logo.jpg">
        </div>
        <!-- 页面标题 -->
        <div id="div_title">
            <b><i>希望中学排课系统</i></b>
        </div>
    </div>

    <!-- 登陆框 -->
    <div id="div_sheet">
        <!-- 标题/注册 -->
        <div id="div_sheet_title">
            <h1>&emsp;欢迎登陆</h1>
        </div>
        <br>
        <!-- 登陆表单 -->
        <div id="div_form">
            <form action="LoginServlet" method="post">
                <!-- 用户名 -->
                <div class="div_input">
                    &emsp;&emsp;用户名
                    <input class="input_text" id="username" name="username" type="text" placeholder="请输入用户名">
                </div>
                <!-- 密码 -->
                <div class="div_input">
                    &emsp;&emsp;密&emsp;码
                    <input class="input_text" id="password" name="password" type="password" placeholder="请输入密码">
                </div>
                <!-- 验证码 -->
                <div class="div_input">
                    &emsp;&emsp;验证码
                    <input class="input_text" id="check" type="text" placeholder="请输入验证码">
                    <!--验证图片-->
                    <div id="div_checkImg">
                        <img src="img/1.jpeg" class="img1" id="checkimg"><br>
                    </div>
                </div>
                <div id="div_tip">
                    <c:if test="${cookie.error.value == 1}" var="flag">
                        用户名或密码错误！
                        <%
                            Cookie cookie = new Cookie("error","0");
                            response.addCookie(cookie);
                        %>
                    </c:if>
                </div>
                <!-- 登陆按钮 -->
                <input id="input_submit" type="submit" value="登&emsp;&emsp;陆">
            </form>
        </div>
    </div>

</body>
</html>
