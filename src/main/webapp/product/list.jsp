<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/07/2021
  Time: 10:42 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/product?action=create">Create new product</a>
</p>
<table border="1">
<tr>
    <td>Name</td>
    <td>Price</td>
    <td>Description</td>
    <td>Producer</td>
    <td>Image</td>
</tr>
    <c:forEach items="${products}" var="product">
<tr>
    <td><a href="/product?action=view&id=${product.id}">${product.name}</a> </td>
    <td>${product.price}</td>
    <td>${product.getDescription()}</td>
    <td>${product.getProducer()}</td>
    <td><img width="120px" height="150px" src="${product.image}"></td>
    <td><a href="/product?action=edit&id=${product.getId()}">edit</a></td>
    <td><a href="/product?action=delete&id=${product.getId()}">delete</a></td>
</tr>
    </c:forEach>
</table>
<form method="get">
    <fieldset>
        <legend>Search product</legend>
<table>
        <tr>
            <td>Name: </td>
            <input type="hidden" name="action" value="search">
            <td><input type="text" name="name"  placeholder="Enter name product"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" ></td>
        </tr>
</table>
    </fieldset>
</form>

</body>
</html>
