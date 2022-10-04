<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a recipe</title>
</head>
<body>
<div class="container">

    <h1>Add Recipe</h1>

    <div class="row">

        <form method="post" action="${pageContext.request.contextPath}/recipe/add">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
            <br>
            <label for="timePreparation">Temps de préparation (minutes):</label>
            <input type="number" id="timePreparation" name="timePreparation" value="0">
            <br>
            <label for="timeRest">Temps de repos (minutes):</label>
            <input type="number" id="timeRest" name="timeRest" value="0">
            <br>
            <label for="timeCooking">Temps de cuisson (minutes):</label>
            <input type="number" id="timeCooking" name="timeCooking" value="0">
            <br>
            <label for="price">Prix:</label>
            <input type="number" id="price" name="price" value="0">
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
            <button type="submit">Add recipe</button>
        </form>

    </div>

    <a href="${pageContext.request.contextPath}/recipe/all">Retour</a>

</div>
</body>
</html>
