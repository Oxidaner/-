<%@ page import="entity.Employee" %><%--
  Created by IntelliJ IDEA.
  User: 24234
  Date: 2019/3/29
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>修改员工信息</title>
    <link rel="stylesheet" type="text/css" href="css/table.css">
</head>
<body>
<%Employee employee = (Employee) session.getAttribute("employee");%>
<form action="/updateServlet" method="post">
    <center>
        <table class="gridtable">
            <tr>
                <td align="center" colspan="2">
                    修改员工信息
                    <input type="hidden" name="id" value="<%=employee.getId()%>">
                </td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name" value="<%=employee.getName()%>"></td>
            </tr>
            <tr>
                <td>账号</td>
                <td>
                    <input type="text" name="account" value="<%=employee.getAccount()%>" >
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input type="text" name="password" value="<%=employee.getPassword()%>" >
                </td>
            </tr>
            <tr>
                <td>部门</td>
                <td>
                    <%
                        if (employee.getDepartment().equals("仓库管理员")) {
                    %>
                    <select name="department">
                        <option value="仓库管理员" selected="selected">仓库管理员</option>
                        <option value="销售">销售</option>
                        <option value="保安">保安</option>
                    </select>
                    <%} else if (employee.getDepartment().equals("销售")) {%>
                    <select name="department">
                        <option value="仓库管理员">仓库管理员</option>
                        <option value="销售" selected="selected">销售</option>
                        <option value="保安">保安</option>
                    </select>
                    <%} else if (employee.getDepartment().equals("保安")) {%>
                    <select name="department">
                        <option value="仓库管理员">仓库管理员</option>
                        <option value="销售">销售</option>
                        <option value="保安" selected="selected">保安</option>
                    </select>
                    <%}%>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="修改">
                </td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>
