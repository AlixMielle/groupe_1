<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>

<div class="container mt-4">
    <div class="row">
        <div class="col-8 offset-2">

            <h1>Profile</h1>

            <div class="card">
                <img src="${user.pictureUrl}" class="card-img-top h-50" alt="${user.username}">
                <div class="card-body">
                    <h5 class="card-title text">${user.username}</h5>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Firstname : ${user.surface}</li>
                    <li class="list-group-item">Lastname : ${user.inhabitant}</li>
                    <li class="list-group-item">email : ${user.latitude}</li>
                    <li class="list-group-item">pictureUrl : ${user.pictureUrl}</li>
                    <li class="list-group-item">password : ${user.password}</li>
                </ul>

            </div>
        </div>
    </div>
</div>


</body>
</html>
