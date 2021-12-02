<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<% ResultSet resultSet = (ResultSet) session.getAttribute("resultSet");%>
<html>
<head>
    <title>摩托车销售管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/table.css">
</head>
<body>
<center>
    <table class="gridtable">
        <tr>
            <td align="center" colspan="8">员工信息</td>
        </tr>
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>密码</td>
            <td>账号</td>
            <td>部门</td>
            <td align="center" colspan="2">操作</td>
        </tr>
        <%
            while (resultSet.next()) {
        %>

        <tr>
            <td><%=resultSet.getString("E_Id")%>
            </td>
            <td><%=resultSet.getString("E_name")%>
            </td>
            <td><%=resultSet.getString("E_account")%>
            </td>
            <td><%=resultSet.getString("E_password")%>
            </td>
            <td><%=resultSet.getString("E_department")%>
            </td>
            <td><a href="selectServlet?id=<%=resultSet.getString("E_Id")%>">修改</a></td>
            <td><a href="deleteServlet?id=<%=resultSet.getString("E_Id")%>" onclick="return confirm('确定删除？')">删除</a></td>
        </tr>
        <%}%>
        <tr>
            <td align="center" colspan="8">
                <a href="stuAdd.jsp">添加</a>
            </td>
        </tr>
    </table>
</center>
</body>
</html>
