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
    <title>Title</title>
    <script>
        $(function () {
            $("#kebiao").attr("class","active");
        })
    </script>
</head>
<body>
    <%
        String[] list = {"一年级1班","一年级2班","一年级3班","二年级1班","二年级2班","二年级3班","三年级1班","三年级2班","三年级3班"};
        String s = null;
        int banji = Integer.parseInt((String)session.getAttribute("banji"));
        switch (banji){
            case 11: s = list[0];break;
            case 12: s = list[1];break;
            case 13: s = list[2];break;
            case 21: s = list[3];break;
            case 22: s = list[4];break;
            case 23: s = list[5];break;
            case 31: s = list[6];break;
            case 32: s = list[7];break;
            case 33: s = list[8];break;
        }
    %>
    <%-- 主要部分 --%>
    <div style="width:85%; float: left; overflow:hidden;">
        <table class="table table-bordered" style="height: 700px">
            <tr>
                <td><%=s%></td>
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
                    <td>
                        <%--  如果已选科目已经被删除，则显示空白  --%>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                            </c:if>
                        </c:forEach>
                        <br>
                        ${get.jiaoshi}
                    </td>
                </c:forEach>
            </tr>
            <%--  第二节  --%>
            <tr>
                <td>第二节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="5" end="9">
                    <td>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                                <c:set var="flag" value="true"></c:set>
                            </c:if>
                        </c:forEach>
                        ${get.jiaoshi}
                    </td>
                </c:forEach>
            </tr>
            <%--  第三节  --%>
            <tr>
                <td>第三节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="10" end="14">
                    <td>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                                <c:set var="flag" value="true"></c:set>
                            </c:if>
                        </c:forEach>
                        ${get.jiaoshi}
                    </td>
                </c:forEach>
            </tr>
            <%--  第四节  --%>
            <tr>
                <td>第四节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="15" end="19">
                    <td>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                                <c:set var="flag" value="true"></c:set>
                            </c:if>
                        </c:forEach>
                        ${get.jiaoshi}
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
                    <td>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                                <c:set var="flag" value="true"></c:set>
                            </c:if>
                        </c:forEach>
                        ${get.jiaoshi}
                    </td>
                </c:forEach>
            </tr>
            <%--  第六节  --%>
            <tr>
                <td>第六节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="25" end="29">
                    <td>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                                <c:set var="flag" value="true"></c:set>
                            </c:if>
                        </c:forEach>
                        ${get.jiaoshi}
                    </td>
                </c:forEach>
            </tr>
            <%--  第七节  --%>
            <tr>
                <td>第七节</td>
                <c:forEach var="get" items="${sessionScope.ks}" begin="30" end="34">
                    <td>
                        <c:forEach var="getss" items="${sessionScope.kss}">
                            <c:if test="${getss.subject==get.subject}">
                                ${get.subject}
                                <c:set var="flag" value="true"></c:set>
                            </c:if>
                        </c:forEach>
                        ${get.jiaoshi}
                    </td>
                </c:forEach>
            </tr>
            <tr colspan="7">
                <td>
                    <a class="btn btn-default" href="kebiao.jsp">返回</a>
                </td>
            </tr>
        </table>
    </div>

</body>
</html>
