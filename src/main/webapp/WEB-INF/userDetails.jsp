<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP RECIPE | PROFIL UTILISATEUR</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/main.css' />"/>
    <script src="js/bootstrap.bundle.min.js" defer></script>
    <script src="js/toTop.js" defer></script>
</head>
<body>

<jsp:include page="header.jsp"/>

<section id="section1" class="container-fluid overflow-hidden">
    <h3 id="title2" class="text-uppercase text-center">${user.username}</h3>
    <div id="box1" class="container">
        <div class="row">
            <div class="col-12 col-lg-6 col-md-8 col-sm-12">
                <div class="bloc">
                    <div>
                        <img src="${user.pictureUrl}"
                             class="img-fluid m-5" alt="${user.username}">
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4 col-md-4 col-sm-12">
                <div class="container w-75 border border-1 mb-5">
                    <div class="row justify-content-center">
                        <div class="col col-lg-12 col-md-10 col-sm-6">
                            <div class="align-items-center">
                                <div class="text-center mt-3">
                                    <input hidden name="userId" value="${user.id}">
                                    <h5>Pseudo utilisateur :</h5>
                                    <p>${user.username}</p>
                                    <br>
                                    <h4>Prénom</h4>
                                    <p>${user.firstname}</p>
                                    <h4>Nom</h4>
                                    <p>${user.lastname}</p>
                                    <h4>Email</h4>
                                    <p>${user.email}</p>
                                    <h4>Mot de passe</h4>
                                    <p>${user.password}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>

</body>
</html>