<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/28
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>Error</title>
</head>
<body align="center">
<p>语句终止,插入失败</p>
<%
    String message = (String) session.getAttribute("message");
    out.print(message);
%>
</body>
</html>
