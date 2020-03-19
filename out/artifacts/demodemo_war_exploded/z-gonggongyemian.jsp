<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 02:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--  公共页面  --%>
    <title>DaddyAlu排课系统</title>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
    <style>
        div{
            /*border: 1px red solid;*/
        }
        .div_title{
            float: left;
            width: 200px;
            height: 90px;
            margin-top: 5px;
            line-height: 90px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%--  标题栏  --%>
    <div style="width: 100%; height: 100px; background-color: #cee9ea">
        <div class="div_title"><img src="img/logo.jpg" style="width: 130px; height: 90px"></div>
        <div class="div_title" style="font-size: 24px">中 学 排 课 系 统</div>
        <div class="div_title" style="float: right">
            欢迎登陆，${sessionScope.username}
            <span class="glyphicon glyphicon-user"></span> &emsp;
            <a href="LogoutServlet">登出</a>
        </div>
    </div>

    <%--  菜单栏  --%>
    <div style="width: 15%; height: 800px; float: left; background-color: #f5f5f5">
        <ul class="nav nav-pills nav-stacked">
            <li id="home" role="presentation"><a href="home.jsp">首页</a></li>
            <li id="kebiao" role="presentation"><a href="KebiaoServlet">管理课表</a></li>
            <li id="kemu" role="presentation"><a href="KemuServlet">编辑科目</a></li>
            <li id="jiaoshi" role="presentation"><a href="JiaoshiServlet">查看教师</a></li>
        </ul>
    </div>

    <%--  判断当前页，导航显示高亮  --%>
    <script>
        $(function () {
            var t = $("#flag").text();
            console.log(t);
            if (t == "home" ){
                $("#home").attr("class","active")
                $("#kebiao").attr("class","")
                $("#kemu").attr("class","")
                $("#jiaoshi").attr("class","")
            }else if (t == "kebiao"){
                $("#home").attr("class","")
                $("#kebiao").attr("class","active")
                $("#kemu").attr("class","")
                $("#jiaoshi").attr("class","")
            }else if (t == "kemu"){
                $("#home").attr("class","")
                $("#kebiao").attr("class","")
                $("#kemu").attr("class","active")
                $("#jiaoshi").attr("class","")
            }else if (t == "jiaoshi"){
                $("#home").attr("class","")
                $("#kebiao").attr("class","")
                $("#kemu").attr("class","")
                $("#jiaoshi").attr("class","active")
            }
        })
    </script>
</body>
</html>
