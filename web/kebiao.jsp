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
                <td>年级</td>
                <td>班级</td>
                <td>操作</td>
            </tr>
            <%
                String[] g = {"一年级","二年级","三年级"};
                String[] c = {"一班","二班","三班"};
                for (int i = 0; i < 3; i++){
                    for (int k = 0; k < 3; k++){%>
                        <tr>
                            <td><%=g[i]%></td>
                            <td><%=c[k]%></td>
                            <td>
                                <a href="ChakanServlet?id=<%=(i+1)+""+(k+1)%>">查看</a>
                                <a href="GuanliServlet?id=<%=(i+1)+""+(k+1)%>">排课</a>
                                <a href="GaijiaoshiServlet?id=<%=(i+1)+""+(k+1)%>">安排教师</a>
                            </td>
                        </tr>
                    <%}
                }
            %>
        </table>
    </div>

</body>
</html>