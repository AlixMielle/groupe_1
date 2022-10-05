<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Une recette</title>
</head>
<body>
<div class="container">

    <h1>Recette</h1>

        <div>
            <a>${recipe.id}</a>
            <a>${recipe.name}</a>
            <img src="${recipe.pictureUrl}" alt="photo">
            <a>${recipe.nbPerson}</a>
            <a>${recipe.type}</a>
            <a>${recipe.timePreparation}, ${recipe.timeRest}, ${recipe.timeCooking}</a>
            <a>${recipe.difficulty}</a>
            <a>${recipe.price}</a>
            <c:forEach items="${recipe.ingredients}" var="i">
                <a>${i.ingredient.name} : ${i.qte} g</a>
            </c:forEach>
        </div>

    <a href="${pageContext.request.contextPath}/recipe/edit?recipeId=${recipe.id}">Modifier</a>
    <a href="${pageContext.request.contextPath}/recipe/delete?recipeId=${recipe.id}">Supprimer</a>
    <a href="${pageContext.request.contextPath}/recipe/all">Retour</a>

</div>
</body>
</html>
