<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/16
  Time: 09:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="z-gonggongyemian.jsp"%>
<html>
<head>
    <title>科目添加</title>
</head>
<body>
    <div style="width:85%; float: left; overflow:hidden;">
        <table class="table table-bordered">
            <form action="TianjiaServlet" id="form1">
            <tr>
                <td>编号</td>
                <td colspan="2">科目名称</td>
            </tr>
            <tr>
                <td><input type="text" name="id"></td>
                <td><input type="text" name="subject"></td>
<%--                <td><input type="submit" value="确认添加"></td>--%>
                <td><a class="btn btn-primary" role="button" id="btnA">确认添加</a></td>
            </tr>
            </form>
        </table>
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
