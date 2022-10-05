<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit a recipe</title>
</head>
<body>
<div class="container">

    <h1>Edit Recipe</h1>

    <div class="row">

        <form method="post" action="${pageContext.request.contextPath}/recipe/edit">
            <input hidden type="text" id="recipeId" name="recipeId" value="${recipe.id}">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${recipe.name}">
            <br>
            <label for="timePreparation">Temps de préparation (minutes):</label>
            <input type="number" id="timePreparation" name="timePreparation" value="${recipe.timePreparation}">
            <br>
            <label for="timeRest">Temps de repos (minutes):</label>
            <input type="number" id="timeRest" name="timeRest" value="${recipe.timeRest}">
            <br>
            <label for="timeCooking">Temps de cuisson (minutes):</label>
            <input type="number" id="timeCooking" name="timeCooking" value="${recipe.timeCooking}">
            <br>
            <label for="price">Prix:</label>
            <input type="number" id="price" name="price" value="${recipe.price}">
            <br>
            <label for="type">Type de plat:</label>
            <select typeof="text" id="type" name="type">
                <option value="ENTREE">Entrée</option>
                <option value="PLAT">Plat</option>
                <option value="DESSERT">Dessert</option>
            </select>
            <br>
            <label for="difficulty">Difficulté:</label>
            <select typeof="text" id="difficulty" name="difficulty">
                <option value="EASY">Facile</option>
                <option value="MEDIUM">Moyen</option>
                <option value="HARD">Difficile</option>
            </select>
            <br>
            <button type="submit">Confirm changes</button>
        </form>

    </div>

    <a href="${pageContext.request.contextPath}/recipe/all">Retour</a>

</div>
</body>
</html>
