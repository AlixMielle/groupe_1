<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create a recipe</title>
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

    <h1 class="h3 mb-3 fw-normal pt-2 text-center">Créez votre recette !</h1>

    <div class="row">
        <form class="mb-6 p-1" method="post" action="${pageContext.request.contextPath}/recipe/add">
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="name">Titre de la recette :</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="col-4">
                    <label for="pictureUrl" class="form-label">Photo :</label>
                    <input id="pictureUrl" type="text" name="pictureUrl" required>
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="nbPerson">Nombre de personnes :</label>
                    <input type="number" id="nbPerson" name="nbPerson" value="1" min="0">
                </div>
                <div class="col-4">
                    <label for="timePreparation">Temps de préparation :</label>
                    <input type="number" id="timePreparation" name="timePreparation" value="0" min="0">
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-4">
                    <label for="timeRest">Temps de repos :</label>
                    <input type="number" id="timeRest" name="timeRest" value="0" min="0">
                </div>
                <div class="col-4">
                    <label for="timeCooking">Temps de cuisson :</label>
                    <input type="number" id="timeCooking" name="timeCooking" value="0" min="0">
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="type">Type de plat :</label>
                    <select typeof="text" id="type" name="type">
                        <option value="ENTREE">Entrée</option>
                        <option value="PLAT">Plat</option>
                        <option value="DESSERT">Dessert</option>
                    </select>
                </div>
                <div class="col-4">
                    <label for="difficulty">Difficulté :</label>
                    <select typeof="text" id="difficulty" name="difficulty">
                        <option value="EASY">Facile</option>
                        <option value="MEDIUM">Moyen</option>
                        <option value="HARD">Difficile</option>
                    </select>
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="price">Prix :</label>
                    <input type="number" id="price" name="price" value="0" min="0">
                </div>
            </div>

            <!--INGREDIENTS-->
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="ingredient1" class="form-label">Ingrédient :</label>
                    <input type="text" id="ingredient1" name="ingredient1" placeholder="Saisir un ingrédient">
                </div>
                <div class="col-4">
                    <label for="qte1" class="form-label">Quantité :</label>
                    <input type="number" id="qte1" name="qte1" value="0" step="10" min="0">
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="ingredient2" class="form-label">Ingrédient : </label>
                    <input type="text" id="ingredient2" name="ingredient2" placeholder="Saisir un ingrédient">
                </div>
                <div class="col-4">
                    <label for="qte2" class="form-label">Quantité :</label>
                    <input type="number" id="qte2" name="qte2" value="0" step="10" min="0">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label for="ingredient3" class="form-label">Ingrédient :</label>
                    <input type="text" id="ingredient3" name="ingredient3" placeholder="Saisir un ingrédient">
                </div>
                <div class="col-4">
                    <label for="qte3" class="form-label">Quantité :</label>
                    <input type="number" id="qte3" name="qte3" value="0" step="10" min="0">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label for="ingredient4" class="form-label">Ingrédient :</label>
                    <input type="text" id="ingredient4" name="ingredient4" placeholder="Saisir un ingrédient">
                </div>
                <div class="col-4">
                    <label for="qte4" class="form-label">Quantité :</label>
                    <input type="number" id="qte4" name="qte4" value="0" step="10" min="0">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-4">
                    <label for="ingredient5" class="form-label">Ingrédient :</label>
                    <input type="text" id="ingredient5" name="ingredient5" placeholder="Saisir un ingrédient">
                </div>
                <div class="col-4">
                    <label for="qte5" class="form-label">Quantité :</label>
                    <input type="number" id="qte5" name="qte5" value="0" step="10" min="0">
                </div>
            </div>

            <!--STEPS-->
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="step1" class="form-label">Etape 1:</label>
                    <textarea type="text" id="step1" name="step1" rows="2"
                              placeholder="Saisir la première étape de la recette"></textarea>
                </div>
                <div class="col-4">
                    <label for="step1" class="form-label">Etape 4:</label>
                    <textarea type="text" id="step4" name="step4" rows="2"
                              placeholder="Saisir la quatrième étape de la recette"></textarea>
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="step2" class="form-label">Etape 2:</label>
                    <textarea type="text" id="step2" name="step2" rows="2"
                              placeholder="Saisir la deuxième étape de la recette"></textarea>
                </div>
                <div class="col-4">
                    <label for="step1" class="form-label">Etape 5:</label>
                    <textarea type="text" id="step5" name="step5" rows="2"
                              placeholder="Saisir la cinquième étape de la recette"></textarea>
                </div>
            </div>
            <div class="row mb-3 ">
                <div class="col-4">
                    <label for="step1" class="form-label">Etape 3:</label>
                    <textarea type="text" id="step3" name="step3" rows="2"
                              placeholder="Saisir la troisième étape de la recette"></textarea>
                </div>
            </div>

            <!--SUBMIT BUTTON-->
            <div class="mb-3 p-2">
                <button class="btn btn-lg p-2" type="submit" style="background-color: #EBB917">Créer la recette</button>
                <button class="btn btn-lg btn-secondary p-2" type="reset">Annuler</button>
            </div>
        </form>
        <a class="h6 mb-3 fw-normal" href="${pageContext.request.contextPath}/recipe/all">Retour</a>
    </div>
</div>

<!-- footer -->
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>

</body>
</html>
