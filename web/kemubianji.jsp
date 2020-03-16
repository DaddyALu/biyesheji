<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 08:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="z-gonggongyemian.jsp"%>
<html>
<head>
    <title>kemu</title>
</head>
<body>
    <%-- 判断当前页 --%>
    <flag style="display: none" id="flag">kemu</flag>

    <div style="width:85%; height: 800px; float: left; overflow:hidden;">
        <table class="table table-bordered" style="height: 700px">
            <tr>
                <td colspan="3"><a class="btn btn-primary" href="kemutianjia.jsp">添加</a></td>
            </tr>
            <tr>
                <td>编号</td>
                <td>可选科目</td>
                <td>操作</td>
            </tr>
            <c:forEach var="get" items="${sessionScope.kss}">
                <tr>
                    <td>${get.id}</td>
                    <td>${get.subject}</td>
                    <td><a href="ShanchuServlet?id=${get.id}">删除</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
