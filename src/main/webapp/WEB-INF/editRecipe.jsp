<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit a recipe</title>
</head>
<body>
<div class="container">

    <h1>Modifiez la recette</h1>

    <div class="row">

        <form method="post" action="${pageContext.request.contextPath}/recipe/edit">
            <input hidden type="text" id="recipeId" name="recipeId" value="${recipe.id}">
            <label for="name">Nom :</label>
            <input type="text" id="name" name="name" value="${recipe.name}">
            <div class="mb-3">
                <label for="nbPerson">Nombre de personnes :</label>
                <input type="number" id="nbPerson" name="nbPerson" value="${recipe.nbPerson}">
            </div>
            <div class="mb-3">
                <label for="pictureUrl" class="form-label">Photo :</label>
                <input id="pictureUrl" type="text" name="pictureUrl" class="form-control" required
                       value="${recipe.pictureUrl}">
            </div>
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
                <option
                        <c:if test="${recipe.type == 'ENTREE'}">selected</c:if> value="ENTREE">Entrée
                </option>
                <option
                        <c:if test="${recipe.type == 'PLAT'}">selected</c:if> value="PLAT">Plat
                </option>
                <option
                        <c:if test="${recipe.type == 'DESSERT'}">selected</c:if> value="DESSERT">Dessert
                </option>
            </select>
            <br>
            <label for="difficulty">Difficulté:</label>
            <select typeof="text" id="difficulty" name="difficulty">
                <option
                        <c:if test="${recipe.difficulty == 'EASY'}">selected</c:if> value="EASY">Facile
                </option>
                <option
                        <c:if test="${recipe.difficulty == 'MEDIUM'}">selected</c:if> value="MEDIUM">Moyen
                </option>
                <option
                        <c:if test="${recipe.difficulty == 'HARD'}">selected</c:if> value="HARD">Difficile
                </option>
            </select>
            <br>
            <%--<div class="mb-3">
                <input hidden type="text" id="ingredientId" name="ingredientId" value="${ingredient.id}">
                <label for="ingredient1" class="form-label">Ingrédient</label>
                <select class="form-select" aria-label="Default select example" id="ingredient1" name="ingredient1"
                        required>
                    <c:forEach items="${ingredientList}" var="i">
                        <option value="${i.id}">${i.name}</option>
                    </c:forEach>
                </select>
                <label for="qte1" class="form-label">Quantité</label>
                <input type="number" id="qte1" name="qte1" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient2" class="form-label">Ingrédient</label>
                <select class="form-select" aria-label="Default select example" id="ingredient2" name="ingredient2"
                        required>
                    <c:forEach items="${ingredientList}" var="i">
                        <option value="${i.id}">${i.name}</option>
                    </c:forEach>
                </select>
                <label for="qte2" class="form-label">Quantité</label>
                <input type="number" id="qte2" name="qte2" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient3" class="form-label">Ingrédient</label>
                <select class="form-select" aria-label="Default select example" id="ingredient3" name="ingredient3"
                        required>
                    <c:forEach items="${ingredientList}" var="i">
                        <option value="${i.id}">${i.name}</option>
                    </c:forEach>
                </select>
                <label for="qte3" class="form-label">Quantité</label>
                <input type="number" id="qte3" name="qte3" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient4" class="form-label">Ingrédient</label>
                <select class="form-select" aria-label="Default select example" id="ingredient4" name="ingredient4"
                        required>
                    <c:forEach items="${ingredientList}" var="i">
                        <option value="${i.id}">${i.name}</option>
                    </c:forEach>
                </select>
                <label for="qte4" class="form-label">Quantité</label>
                <input type="number" id="qte4" name="qte4" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient5" class="form-label">Ingrédient</label>
                <select class="form-select" aria-label="Default select example" id="ingredient5" name="ingredient5"
                        required>
                    <c:forEach items="${ingredientList}" var="i">
                        <option value="${i.id}">${i.name}</option>
                    </c:forEach>
                </select>
                <label for="qte5" class="form-label">Quantité</label>
                <input type="number" id="qte5" name="qte5" value="0" step="10">
            </div>--%>
            <button type="submit">Modifier</button>
            <button type="reset">Annuler</button>
        </form>

    </div>

    <a href="${pageContext.request.contextPath}/recipe/all">Retour</a>

</div>
</body>
</html>
