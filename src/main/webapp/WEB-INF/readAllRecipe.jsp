<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | Recettes</title>
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

<div class="parallax">
    <p id="motto">Aucune idée pour cuisiner? Bienvenue sur Recipe TP!</p>
</div>

<section id="section1" class="container-fluid bg-light">
    <h3 id="title2" class="text-uppercase text-center">Toutes nos recettes</h3>
    <div class="card-deck container-md p-5">
        <div class="row">
            <c:forEach items="${recipes}" var="recipe">
                <div class="col">
                    <div class="card border-0 d-inline-block" style="width: 18rem;">
                        <img src="${recipe.pictureUrl}" class="card-img-top img-fluid h-221" alt="recipe photo" id="thumbnail">
                        <div class="card-body">
                            <h5 class="card-title text-uppercase font-weight-bold p-2">${recipe.name}</h5>
                            <a class="d-none">${recipe.id}</a>
                            <a class="d-none">${recipe.nbPerson}</a>

                            <a class="d-none"><c:if test="${recipe.type == 'ENTREE'}">Entrée</c:if></a>
                            <a class="d-none"><c:if test="${recipe.type == 'PLAT'}">Plat</c:if></a>
                            <a class="d-none"><c:if test="${recipe.type == 'DESSERT'}">Dessert</c:if></a>

                            <a class="d-none">${recipe.timePreparation}, ${recipe.timeRest}, ${recipe.timeCooking}</a>

                            <a class="d-none"><c:if test="${recipe.difficulty == 'EASY'}">Facile</c:if></a>
                            <a class="d-none"><c:if test="${recipe.difficulty == 'MEDIUM'}">Moyen</c:if></a>
                            <a class="d-none"><c:if test="${recipe.difficulty == 'HARD'}">Difficile</c:if></a>

                            <a class="d-none">${recipe.price}</a>
                            <a href="${pageContext.request.contextPath}/auth/recipe/edit?recipeId=${recipe.id}" class="btn btn-primary border-0" style="background-color: #EBB917">Modifier</a>
                            <a href="${pageContext.request.contextPath}/auth/recipe/delete?recipeId=${recipe.id}" class="btn btn-primary border-0" style="background-color: #EBB917">Supprimer</a>
                            <a href="${pageContext.request.contextPath}/recipe?recipeId=${recipe.id}" class="btn btn-primary border-0" style="background-color: #EBB917">Découvrir</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>

</body>
</html>
