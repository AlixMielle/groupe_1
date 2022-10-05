<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | Create User</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/main.css' />"/>
    <script src="js/bootstrap.bundle.min.js" defer></script>
    <script src="js/toTop.js" defer></script>
</head>
<body class="text-center">
<!-- header -->
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

<h1 class="h3 mb-3 fw-normal p-1">Créer un compte</h1>

<form class="mb-4 p-1" action="${pageContext.request.contextPath}/user/add" method="post">
    <div class="form-floating p-2">
        <input type="text" id="firstname" name="firstname" placeholder="Prénom">
    </div>
    <div class="form-floating p-2">
        <input type="text" id="lastname" name="lastname" placeholder="Nom">
    </div>
    <div class="form-floating p-2">
        <input type="text" id="username" name="username" placeholder="Pseudo">
    </div>
    <div class="form-floating p-2">
        <input type="text" id="email" name="email" placeholder="Email">
    </div>
    <div class="form-floating p-2">
        <input type="text" id="pictureUrl" name="pictureUrl" placeholder="Photo de profil">
    </div>
    <div class="form-floating p-2">
        <input type="password" id="password" name="password" placeholder="Mot de passe">
    </div>
    <button class="btn btn-lg p-2" type="submit" style="background-color: #EBB917">Créer un profil</button>
    <button class="btn btn-lg btn-secondary p-2" type="reset">Annuler</button>
</form>

<!-- footer -->
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

</body>
</html>
