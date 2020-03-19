<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/3/19
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="z-gonggongyemian.jsp"%>
<html>
<head>
    <title>添加课表</title>
    <style>
        .example{
            font-size: 14px;
            color: red;
        }
    </style>
</head>
<body>
    <%-- 判断当前页 --%>
    <flag style="display: none" id="flag">kebiao</flag>

    <div style="width:85%; float: left; overflow:hidden;">
        <table class="table table-bordered">
            <form action="ClassesTianjiaServlet" id="form1">
                <tr>
                    <td>班级编号</td>
                    <td>年级</td>
                    <td>班级</td>
                    <td>描述</td>
                    <td>操作</td>
                </tr>
                <tr>
                    <td><input type="text" name="cid"></td>
                    <td><input type="text" name="nianji"></td>
                    <td><input type="text" name="banji"></td>
                    <td><input type="text" name="desc"></td>
                    <td><a class="btn btn-primary" role="button" id="btnA">确认添加</a></td>
                </tr>
                <tr>
                    <td class="example">例：21 <br>（表示二年级1班，要与后面所填内容一致；必须为数字！）</td>
                    <td class="example">例：二年级</td>
                    <td class="example">例：一班</td>
                    <td class="example" colspan="2">例：二年级1班（要与前面所填内容一致）</td>
                </tr>
                <tr>
                    <td colspan="5"><a class="btn btn-default" href="kebiao.jsp">返回</a></td>
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
