<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/07/2021
  Time: 11:04 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span class="message">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
<fieldset>
    <legend>Product information</legend>
    <table>
<tr>
    <td>Name: </td>
    <td><input type="text" name="name" id="name" value="${product.getName()}"></td>
</tr>
        <tr>
            <td>Price: </td>
            <td><input type="text" name="price" id="price" value="${product.getPrice()}"></td>
        </tr>
        <tr>
            <td>Description: </td>
            <td><input type="text" name="description" id="description" value="${product.getDescription()}"></td>
        </tr>
        <tr>
            <td>Producer: </td>
            <td><input type="text" name="producer" id="producer" value="${product.getProducer()}"></td>
        </tr>
        <tr>
            <td>image: </td>
            <td> <div class="form-group text-center">
<%--                <label for="exampleFormControlFile1">Example file input</label>--%>
                <input type="file" class="form-control-file" id="exampleFormControlFile1" name="image" value="${product.getImage()}">
            </div>  </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Update customer"></td>
        </tr>
    </table>
</fieldset>
</form>
</body>
</html>