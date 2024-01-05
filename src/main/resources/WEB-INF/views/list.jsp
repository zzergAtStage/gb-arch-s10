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
        <c:forEach var="client" items="${clientsList}">
            <tr>
                <td>${client.clientId}</td>
                <td>${client.firstName}</td>
                <td>${client.surName}</td>
                <td>${client.document}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
