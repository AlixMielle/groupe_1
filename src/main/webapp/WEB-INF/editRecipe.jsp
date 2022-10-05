<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit a recipe</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/main.css' />"/>
    <script src="js/bootstrap.bundle.min.js" defer></script>
    <script src="js/toTop.js" defer></script>
</head>

<body>
<!-- header -->
<jsp:include page="/WEB-INF/header.jsp"></jsp:include>

<div class="container">

    <h1 class="h3 mb-3 fw-normal pt-2 text-center">Modifiez la recette</h1>

    <div class="row">

        <form class="mb-6 p-1" method="post" action="${pageContext.request.contextPath}/auth/recipe/edit">
            <input hidden type="text" id="recipeId" name="recipeId" value="${recipe.id}">
            <div class="col-4">
                <label for="name">Titre de la recette :</label>
                <input type="text" id="name" name="name" value="${recipe.name}">
            </div>
            <div class="col-4">
                <label for="pictureUrl" class="form-label">Photo :</label>
                <input id="pictureUrl" type="text" name="pictureUrl" value="${recipe.pictureUrl}">
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="nbPerson">Nombre de personnes :</label>
                    <input type="number" id="nbPerson" name="nbPerson" min="0" value="${recipe.nbPerson}">
                </div>
                <div class="col-4">
                    <label for="timePreparation">Temps de préparation :</label>
                    <input type="number" id="timePreparation" name="timePreparation" min="0"
                           value="${recipe.timePreparation}">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label for="timeRest">Temps de repos :</label>
                    <input type="number" id="timeRest" name="timeRest" min="0" value="${recipe.timeRest}">
                </div>
                <div class="col-4">
                    <label for="timeCooking">Temps de cuisson :</label>
                    <input type="number" id="timeCooking" name="timeCooking" min="0" value="${recipe.timeCooking}">
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="type">Type de plat :</label>
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
                </div>
                <div class="col-4">
                    <label for="difficulty">Difficulté :</label>
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
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="price">Prix :</label>
                    <input type="number" id="price" name="price" value="${recipe.price}" min="0">
                </div>
            </div>

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
            <!--SUBMIT BUTTON-->
            <div class="mb-3 p-2">
                <button class="btn btn-lg p-2" type="submit" style="background-color: #EBB917">Modifier la recette</button>
                <button class="btn btn-lg btn-secondary p-2" type="reset">Annuler</button>
            </div>
        </form>
        <a class="h6 mb-3 fw-normal" href="${pageContext.request.contextPath}/recipe/all">Retour</a>
    </div>
</div>

<!-- footer -->
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

</html>
