<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<html>
<head>

</head>
<body>


<br>

<h3 align="center"><u>Delete User</u></h3>

<table align="center" border="2">
<tr bgcolor="black" style="color:white">
<td>ID</td>
<td>NAME</td>
<td>EMAIL</td>
<td>CITY</td>
<td>CONTACT NO</td>
<td>ACTION</td>
</tr>

<c:forEach items="${userdata}" var="user">
<tr>
<td><c:out value="${user.id}" /></td>
<td><c:out value="${user.name}" /></td>
<td><c:out value="${user.email}" /></td>
<td><c:out value="${user.city}" /></td>
<td><c:out value="${user.contact}" /></td>
<td>
    <a href='<c:url value="delete/${user.id}"></c:url>'>Delete</a>
</td>

</tr>
</c:forEach>

</table>

</body>
</html>
