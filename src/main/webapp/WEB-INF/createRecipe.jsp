<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a recipe</title>
</head>
<body>
<div class="container">

    <h1>Créez votre recette !</h1>

    <div class="row">
        <form method="post" action="${pageContext.request.contextPath}/recipe/add">
            <div class="mb-3">
                <label for="name">Titre de la recette :</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="pictureUrl" class="form-label">Photo :</label>
                <input id="pictureUrl" type="text" name="pictureUrl" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="nbPerson">Nombre de personnes :</label>
                <input type="number" id="nbPerson" name="nbPerson">
            </div>

            <div class="mb-3">
                <label for="timePreparation">Temps de préparation (minutes) :</label>
                <input type="number" id="timePreparation" name="timePreparation" value="0">
            </div>
            <div class="mb-3">
                <label for="timeRest">Temps de repos (minutes) :</label>
                <input type="number" id="timeRest" name="timeRest" value="0">
            </div>
            <div class="mb-3">
                <label for="timeCooking">Temps de cuisson (minutes) :</label>
                <input type="number" id="timeCooking" name="timeCooking" value="0">
            </div>
            <div class="mb-3">
                <label for="price">Prix :</label>
                <input type="number" id="price" name="price" value="0">
            </div>
            <div class="mb-3">
                <label for="type">Type de plat :</label>
                <select typeof="text" id="type" name="type">
                    <option value="ENTREE">Entrée</option>
                    <option value="PLAT">Plat</option>
                    <option value="DESSERT">Dessert</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="difficulty">Difficulté :</label>
                <select typeof="text" id="difficulty" name="difficulty">
                    <option value="EASY">Facile</option>
                    <option value="MEDIUM">Moyen</option>
                    <option value="HARD">Difficile</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="ingredient1" class="form-label">Ingrédient :</label>
                <input type="text" id="ingredient1" name="ingredient1" placeholder="Saisissez un ingrédient">
                <label for="qte1" class="form-label">Quantité :</label>
                <input type="number" id="qte1" name="qte1" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient2" class="form-label">Ingrédient : </label>
                <input type="text" id="ingredient2" name="ingredient2" placeholder="Saisissez un ingrédient">
                <label for="qte2" class="form-label">Quantité :</label>
                <input type="number" id="qte2" name="qte2" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient3" class="form-label">Ingrédient :</label>
                <input type="text" id="ingredient3" name="ingredient3" placeholder="Saisissez un ingrédient">
                <label for="qte3" class="form-label">Quantité :</label>
                <input type="number" id="qte3" name="qte3" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient4" class="form-label">Ingrédient :</label>
                <input type="text" id="ingredient4" name="ingredient4" placeholder="Saisissez un ingrédient">
                <label for="qte4" class="form-label">Quantité :</label>
                <input type="number" id="qte4" name="qte4" value="0" step="10">
            </div>
            <div class="mb-3">
                <label for="ingredient5" class="form-label">Ingrédient :</label>
                <input type="text" id="ingredient5" name="ingredient5" placeholder="Saisissez un ingrédient">
                <label for="qte5" class="form-label">Quantité :</label>
                <input type="number" id="qte5" name="qte5" value="0" step="10">
            </div>
            <div class="mb-3">
                <button type="submit">Créer la recette</button>
                <button type="reset">Annuler</button>
            </div>
        </form>

    </div>

    <a href="${pageContext.request.contextPath}/recipe/all">Retour</a>

</div>
</body>
</html>
