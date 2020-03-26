<%@ page import="dao.KebiaoAll" %>
<%@ page import="entity.Teacher" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.TeacherDaoImpl" %>
<%@ page import="java.util.ArrayList" %>
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
                        <td align="center">
                            <%-- 显示该节次排了什么课，如果没排或者排的课被从可选课程中删除，则显示空白 --%>
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <%-- 显示可编排的教师 --%>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <%-- 遍历所有教师 --%>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <%-- 遍历出每一个List<Teacher> --%>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <%-- 遍历出每一个Teacher对象，每一个对象的name都为"教师1"(随List遍历的进行而变化)，jieci为被安排过的节次--%>
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <%-- 当目前遍历到的Teacher对象中的name属性,与select预备要显示的选项的教师名相同时 --%>
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <%-- 判断这位教师是否在该节次被安排过，如果没有继续使用下一个该教师的已安排节次来对比 --%>
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <%-- 若未被安排在该节次过，则显示该教师的选项 --%>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </td>
                    </c:forEach>
                </tr>
                <%--  第二节  --%>
                <tr>
                    <td>第二节</td>
                    <c:forEach var="get" items="${sessionScope.ks}" begin="5" end="9">
                        <td align="center">
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </td>
                    </c:forEach>
                </tr>
                <%--  第三节  --%>
                <tr>
                    <td>第三节</td>
                    <c:forEach var="get" items="${sessionScope.ks}" begin="10" end="14">
                        <td align="center">
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </td>
                    </c:forEach>
                </tr>
                <%--  第四节  --%>
                <tr>
                    <td>第四节</td>
                    <c:forEach var="get" items="${sessionScope.ks}" begin="15" end="19">
                        <td align="center">
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
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
                        <td align="center">
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </td>
                    </c:forEach>
                </tr>
                <%--  第六节  --%>
                <tr>
                    <td>第六节</td>
                    <c:forEach var="get" items="${sessionScope.ks}" begin="25" end="29">
                        <td align="center">
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </td>
                    </c:forEach>
                </tr>
                <%--  第七节  --%>
                <tr>
                    <td>第七节</td>
                    <c:forEach var="get" items="${sessionScope.ks}" begin="30" end="34">
                        <td align="center">
                            <c:forEach var="getss" items="${sessionScope.kss}">
                                <c:if test="${getss.subject==get.subject}">
                                    ${get.subject}
                                </c:if>
                            </c:forEach>
                            <br>
                            <select name="${get.jieci}">
                                <option value="${get.jiaoshi}">原教师：${get.jiaoshi}</option>
                                <c:forEach var="flag1" items="${sessionScope.ts}">
                                    <c:set var="aaaa" value="0"></c:set>
                                    <c:forEach var="llll" items="${sessionScope.llll}">
                                        <c:forEach var="jiaoshi" items="${llll}">
                                            <c:if test="${flag1.name ==jiaoshi.name}">
                                                <c:if test="${get.jieci == jiaoshi.jieci}">
                                                    <c:set var="aaaa" value="1"></c:set>
                                                </c:if>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    <c:if test="${aaaa == '0'}">
                                        <option value="${flag1.name}">${flag1.name} - ${flag1.subject}</option>
                                    </c:if>
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
