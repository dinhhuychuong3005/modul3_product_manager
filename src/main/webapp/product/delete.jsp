<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/07/2021
  Time: 10:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
<fieldset>
    <legend>Product information</legend>
    <table>
        <tr>
            <td>Name: </td>
            <td>${requestScope["product"].getName()}</td>
        </tr>
        <tr>
            <td>Price: </td>
            <td>${requestScope["product"].price}</td>
        </tr>
        <tr>
            <td>Description: </td>
            <td>${requestScope["product"].description}</td>
        </tr>
        <tr>
            <td>producer: </td>
            <td>${requestScope["product"].producer}</td>
        </tr>
        <tr>
            <td>Image: </td>
            <td><img src="${product.image}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Delete product"></td>
            <td><a href="/product">Back to customer list</a></td>
        </tr>
    </table>
</fieldset>
</form>
</body>
</html>
