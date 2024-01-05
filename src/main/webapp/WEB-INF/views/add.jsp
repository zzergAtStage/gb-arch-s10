<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Clients</title>
</head>
<body>

<h2>Client List</h2>

<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Surname</th>
            <th>Document</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="client" items="${clients}">
            <tr>
                <td>${client.clientId}</td>
                <td>${client.firstName}</td>
                <td>${client.surName}</td>
                <td>${client.document}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<hr>

<h2>Add New Client</h2>
<form action="/main/add" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required><br>

    <label for="surName">Surname:</label>
    <input type="text" id="surName" name="surName" required><br>

    <label for="document">Document:</label>
    <input type="text" id="document" name="document" required><br>

    <input type="submit" value="Add Client">
</form>

</body>
</html>
