<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 01/07/2021
  Time: 11:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Search product</h1>
<c:if test='${requestScope["message"] != null}'>
    <p>
        <span class="message">${requestScope["message"]}</span>
    </p>
</c:if>
<p>
    <a href="/product">Back to product list</a>
</p>

<c:if test="${requestScope['product'] != null}">
    <fieldset>
        <legend>Information ${requestScope['prr'].getName()}</legend>
    <table >
        <tr>
            <td>Name</td>
            <td>${requestScope['search'].getName()}</td>
        </tr>
        <tr>
            <td>Price</td>
            <td>${requestScope['search'].getPrice()}</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>${requestScope['search'].getDescription()}</td>
        </tr>
        <tr>
            <td>Producer</td>
            <td>${requestScope['search'].getProducer()}</td>
        </tr>
        <tr>
            <td>Image</td>
            <td>${requestScope['search'].getImage()}</td>
        </tr>
    </table>
    </fieldset>
</c:if>
</body>
</html>
