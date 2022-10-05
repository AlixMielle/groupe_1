<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP RECIPE | DETAILS</title>
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
    <h3 id="title2" class="text-uppercase text-center">${recipe.name}</h3>
    <div id="box1" class="container">
        <div class="row">
            <div class="col-12 col-lg-6 col-md-8 col-sm-12">
                <div class="bloc">
                    <div>
                        <img src="${recipe.pictureUrl}"
                             class="img-fluid m-5" alt="cook">
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4 col-md-4 col-sm-12">
                <div class="container w-75 border border-1 mb-5">
                    <div class="row justify-content-center">
                        <div class="col col-lg-12 col-md-10 col-sm-6">
                            <div class="align-items-center">
                                <div class="text-center mt-3">
                                    <input hidden name="recipeId" value="${recipe.id}">
                                    <p>Description de la recette</p>
                                    <br>
                                    <h4>Nombre de personnes</h4>
                                    <p>${recipe.nbPerson}</p>
                                    <h4>Type de plat</h4>
                                    <p>${recipe.type}</p>
                                    <h4>Temps de préparation</h4>
                                    <p>${recipe.timePreparation}</p>
                                    <h4>Temps de repos</h4>
                                    <p>${recipe.timeRest}</p>
                                    <h4>Temps de cuisson</h4>
                                    <p>${recipe.timeCooking}</p>
                                    <h4>Difficulté</h4>
                                    <p>${recipe.difficulty}</p>
                                    <h4>Prix</h4>
                                    <p>${recipe.price}</p>
                                    <h4>Ingrédients</h4>
                                    <c:forEach items="${recipe.ingredients}" var="i">
                                        <p>${i.ingredient.name} : ${i.qte} g</p>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<section id="section2" class="container-fluid bg-light">
    <h3 id="title2" class="text-uppercase text-center">Préparation</h3>
    <div class="container pb-3">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-4">
                <div class="bloc">
                    <c:forEach items="${recipe.steps}" var="s">
                        <h2 class="p-3">Etape ${s.step}</h2>
                        <p>${s.description}</p>
                    </c:forEach>

                    <button type="submit" href="${pageContext.request.contextPath}/recipe/edit?recipeId=${recipe.id}">Modifier</button>
                    <button type="submit" href="${pageContext.request.contextPath}/recipe/delete?recipeId=${recipe.id}">Supprimer</button>
                    <button type="submit" href="${pageContext.request.contextPath}/recipe/all">Retour</button>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="footer.jsp"/>

</body>
</html>
