<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/07/2021
  Time: 2:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h1>Product information</h1>
<table border="1">
    <tr>
        <td>Name: </td>
        <td>${requestScope['product'].name}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope['product'].price}</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${requestScope['product'].Description}</td>
    </tr>
    <tr>
        <td>producer: </td>
        <td>${requestScope['product'].producer}</td>
    </tr>
    <tr>
        <td>Image: </td>
        <td>${requestScope['product'].image}</td>
    </tr>
</table>
</body>
</html>
