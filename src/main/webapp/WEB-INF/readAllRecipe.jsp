<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All the recipes</title>
</head>
<body>
<div class="container">

    <h1>Recettes</h1>

    <a href="${pageContext.request.contextPath}/recipe/add">Ajoute une recette</a>

    <div class="row">

        <c:forEach items="${recipes}" var="recipe">
            <div>
                <a>${recipe.id}</a>
                <a>${recipe.name}</a>
                <a>${recipe.type}</a>
                <a>${recipe.timePreparation}, ${recipe.timeRest}, ${recipe.timeCooking}</a>
                <a>${recipe.difficulty}</a>
                <a>${recipe.price}</a>
                <a href="${pageContext.request.contextPath}/recipe?recipeId=${recipe.id}">Details</a>
                <a href="${pageContext.request.contextPath}/recipe/edit?recipeId=${recipe.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/recipe/delete?recipeId=${recipe.id}">Delete</a>
            </div>
        </c:forEach>

        <%--ITEM ISLAND--%>


    </div>

</div>
</body>
</html>
