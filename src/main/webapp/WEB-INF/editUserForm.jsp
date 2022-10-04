<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | Edit User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>

<h1>Edit user</h1>

<form action="${pageContext.request.contextPath}/user/edit" method="post">
    <input hidden name="userId" value="${user.id}">
    <label for="firstname">Firstname</label>
    <input type="text" id="firstname" name="firstname">


    <label for="lastname">Lastname</label>
    <input type="text" id="lastname" name="lastname">


    <label for="username">Username</label>
    <input type="text" id="username" name="username">


    <label for="email">Email</label>
    <input type="text" id="email" name="email">


    <label for="pictureUrl">Picture</label>
    <input type="text" id="pictureUrl" name="pictureUrl">


    <label for="password">Password</label>
    <input type="text" id="password" name="password">

    <button type="submit">Edit profile</button>
</form>

</body>
</html>
