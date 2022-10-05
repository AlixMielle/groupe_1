<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | Login</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/main.css' />"/>
    <script src="js/bootstrap.bundle.min.js" defer></script>
    <script src="js/toTop.js" defer></script>
</head>
<body class="text-center">

<!-- header -->
<jsp:include page="/WEB-INF/header.jsp"/>

<section id="section1" class="container-fluid bg-light">
    <h1 class="h3 mb-3 fw-normal p-1">Connectez-vous</h1>
    <div class="container pb-3 align-items-center">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-4">
                <div class="bloc">
                    <form class="mb-4 p-1" method="post" action="${pageContext.request.contextPath}/login">
                        <div class="form-floating p-2 ">
                            <input id="email" type="text" name="email" placeholder="Email">
                        </div>
                        <div class="form-floating p-2">
                            <input id="password" type="password" name="password" placeholder="Mot de passe">
                        </div>
                        <button class="btn btn-lg p-2" type="submit" style="background-color: #EBB917">Se connecter</button>
                    </form>
                    <button class="btn btn-lg p-2"><a href="${pageContext.request.contextPath}/user/add">Créez un compte</a>
                    </button>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- footer -->
<jsp:include page="/WEB-INF/footer.jsp"/>

</body>
</html>
