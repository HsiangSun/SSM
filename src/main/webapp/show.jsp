<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Show Data| All user Info</title>
</head>
<body>
    <table class="table table-bordered table-dark">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">User Name</th>
            <th scope="col">Password</th>
            <th scope="col">Phone Number</th>
            <th scope="col">Email</th>
            <th scope="col" colspan="4">Role</th>
        </tr>
        </thead>

        <c:forEach items="${user}" var="user">
        <tbody>
            <th scope="row">${user.id}</th>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.phoneNum}</td>
            <td>${user.email}</td>
            <c:forEach items="${user.roleList}" var="role">
                <td>${role.roleName}</td>
                <td>${role.roleDesc}</td>
            </c:forEach>
        </tbody>
        </c:forEach>
    </table>

</body>
</html>
