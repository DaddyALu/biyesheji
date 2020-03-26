<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 04:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="z-gonggongyemian.jsp"%>
<html>
<head>
    <title>查看教师课表</title>
</head>
<body>
    <%-- 判断当前页 --%>
    <flag style="display: none" id="flag">jiaoshi</flag>

    <%-- 主要部分 --%>
    <div style="width:85%; float: left; overflow:hidden;">
        <table class="table table-bordered" style="height: 700px">
            <tr>
                <td style="color: blue"><%=session.getAttribute("name")%></td>
                <td>节次</td>
                <td>周一</td>
                <td>周二</td>
                <td>周三</td>
                <td>周四</td>
                <td>周五</td>
            </tr>
            <%--  第一节  --%>
            <tr>
                <td rowspan="4" align="center">上午</td>
                <td>第一节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="0" end="4">
                    <td align="center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <%--  第二节  --%>
            <tr>
                <td>第二节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="5" end="9">
                    <td style="text-align: center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <%--  第三节  --%>
            <tr>
                <td>第三节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="10" end="14">
                    <td style="text-align: center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <%--  第四节  --%>
            <tr>
                <td>第四节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="15" end="19">
                    <td style="text-align: center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <%-- 午休 --%>
            <tr>
                <td colspan="7">午 间 休 息</td>
            </tr>
            <%--  第五节  --%>
            <tr>
                <td rowspan="3" align="center">下午</td>
                <td>第五节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="20" end="24">
                    <td style="text-align: center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <%--  第六节  --%>
            <tr>
                <td>第六节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="25" end="29">
                    <td style="text-align: center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <%--  第七节  --%>
            <tr>
                <td>第七节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="30" end="34">
                    <td style="text-align: center">
                        <c:forEach var="ls" items="${sessionScope.ls}">
                            <c:if test="${get.jieci == ls.jieci}">
                                ${ls.desc}
                            </c:if>
                        </c:forEach>
                    </td>
                </c:forEach>
            </tr>
            <tr>
                <td colspan="7">
                    <a class="btn btn-default" href="jiaoshiList.jsp">返回</a>
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
