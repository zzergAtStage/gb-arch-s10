<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Show Clients</title>
    <!-- Add Bootstrap CSS link -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">

    <h2 class="mb-4">Client List</h2>

    <table class="table">
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

    <h2 class="mt-4">Add New Client</h2>
    <form action="/main/add" method="post">
        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" class="form-control" id="firstName" name="firstName" required>
        </div>

        <div class="form-group">
            <label for="surName">Surname:</label>
            <input type="text" class="form-control" id="surName" name="surName" required>
        </div>

        <div class="form-group">
            <label for="document">Document:</label>
            <input type="text" class="form-control" id="document" name="document" required>
        </div>

        <button type="submit" class="btn btn-primary">Add Client</button>
    </form>

</div>

<!-- Add Bootstrap JS and Popper.js scripts at the end of the body -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
