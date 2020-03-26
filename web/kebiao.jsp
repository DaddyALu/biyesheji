<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 02:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="z-gonggongyemian.jsp"%>
<html>
<head>
    <title>kebiao</title>
</head>
<body>
    <%-- 判断当前页 --%>
    <flag style="display: none" id="flag">kebiao</flag>

    <%--  主要部分  --%>
    <div style="width:85%; height: 800px; float: left; overflow:hidden;">
        <table class="table table-bordered table-striped" style="height: 700px">
            <tr>
                <td colspan="5"><a class="btn btn-primary" href="ClassesYemianServlet">添加</a></td>
            </tr>
            <tr>
                <td>班级编号</td>
                <td>年级</td>
                <td>班级</td>
                <td>课表</td>
                <td>操作</td>
            </tr>
            <c:forEach var="get" items="${sessionScope.css}">
                <tr>
                    <td>${get.cid}</td>
                    <td>${get.nianji}</td>
                    <td>${get.banji}</td>
                    <td>
                        <a href="ChakanServlet?id=${get.cid}&name=${get.desc}">查看</a>
                        <a href="GuanliServlet?id=${get.cid}&name=${get.desc}">安排课程</a>
                        <a href="GaijiaoshiServlet?id=${get.cid}&name=${get.desc}">安排教师</a>
                    </td>
                    <td><a class="btn btn-danger" href="ClassesShanchuServlet?id=${get.cid}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>