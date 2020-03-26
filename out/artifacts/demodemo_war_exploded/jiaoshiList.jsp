<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="z-gonggongyemian.jsp"%>
<html>
<head>
    <title>jiaoshi</title>
</head>
<body>
    <%-- 判断当前页 --%>
    <flag style="display: none" id="flag">jiaoshi</flag>

    <div style="width:85%; height: 800px; float: left; overflow:hidden;">
        <table class="table table-bordered" style="height: 700px">
            <tr>
                <td>教师编号</td>
                <td>教师名称</td>
                <td>年龄</td>
                <td>执教科目</td>
                <td>联系方式</td>
                <td></td>
            </tr>
            <c:forEach var="get" items="${sessionScope.ts}">
                <tr>
                    <td>${get.tid}</td>
                    <td>${get.name}</td>
                    <td>${get.age}</td>
                    <td>${get.subject}</td>
                    <td>${get.tel}</td>
                    <td>
                        <a class="btn btn-default" href="JiaoshiKebiaoServlet?name=${get.name}">查看课表</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>

