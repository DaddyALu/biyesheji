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
    <title>安排教师</title>
</head>
<body>
    <%-- 判断当前页 --%>
    <flag style="display: none" id="flag">kebiao</flag>

    <%-- 主要部分 --%>
    <div style="width:85%; float: left; overflow:hidden;">
        <form action="PaijiaoshiServlet" id="form1">
            <table class="table table-bordered" style="height: 700px">
                <tr>
                    <td><%=session.getAttribute("banji")%></td>
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
                                <%-- 显示该节次排了什么课，如果没排或者排的课被从可选课程中删除，则显示空白 --%>
                                <c:forEach var="getss" items="${sessionScope.kss}">
                                    <c:if test="${getss.subject==get.subject}">
                                        ${get.subject}
                                    </c:if>
                                </c:forEach>
                                <br>
                                <select name="${get.jieci}">
                                    <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                    <c:forEach var="flag1" items="${sessionScope.ts}">
                                        <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                    </c:forEach>
                                </select>
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
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                </c:forEach>
                            </select>
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
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                </c:forEach>
                            </select>
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
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                </c:forEach>
                            </select>
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
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                </c:forEach>
                            </select>
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
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                </c:forEach>
                            </select>
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
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <option value="${flag1.name}">${flag1.name} ${flag1.subject}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </c:forEach>
                </tr>
                <tr>
                    <td colspan="7">
<%--                        <input type="submit" value="确认修改">--%>
                        <a class="btn btn-primary" role="button" id="btnA">确认修改</a>
                        <a class="btn btn-default" href="kebiao.jsp">返回</a>
                    </td>
                </tr>
            </table>
        </form>

    </div>

    <script>
        $(function () {
            $("#btnA").click(function () {
                $("#form1").submit();
            })
        })
    </script>
</body>
</html>
