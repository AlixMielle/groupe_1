<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TP Recipe | Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>

<!-- header -->

    <h1>Login</h1>

<form method="post"action="${pageContext.request.contextPath}/login">
    <label for="email">Email</label>
    <input id="email" type="text" name="email">

    <label for="password">Password</label>
    <input id="password" type="text" name="password">
    <button type="submit">Sign in</button>

</form>

<a href="${pageContext.request.contextPath}/user/add">Sign in (create user)</a>

<!-- footer -->

</body>
</html>
