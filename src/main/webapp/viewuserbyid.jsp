<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Information</title>
</head>
<body>
    <h2>User Information</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>City</th>
            <th>Contact</th>
            <th>Active</th>
            <!-- Add other user properties as needed -->
        </tr>
        <tr>
            <td><c:out value="${user.id}" /></td>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.dateofbirth}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.city}" /></td>
            <td><c:out value="${user.contact}" /></td>
            <td><c:out value="${user.active}" /></td>
            <!-- Add other user properties as needed -->
        </tr>
    </table>
</body>
</html>
