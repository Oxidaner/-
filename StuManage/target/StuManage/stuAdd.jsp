<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/28
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>添加员工信息</title>
    <link rel="stylesheet" type="text/css" href="css/table.css">
</head>
<body>
<form action="/addServlet" method="post">
    <center>
        <table class="gridtable">
            <tr>
                <td align="center" colspan="2">添加员工信息</td>
            </tr>
            <tr>
                <td>编号</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>账号</td>
                <td>
                    <input type="text" name="password">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="text" name="account"></td>
            </tr>
            <tr>
                <td>部门</td>
                <td><select name="department">
                    <option value="仓库管理员">仓库管理员</option>
                    <option value="销售">销售</option>
                    <option value="保安">保安</option>
                </select></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="添加"></td>
            </tr>
        </table>
    </center>
</form>
</body>
</html>
