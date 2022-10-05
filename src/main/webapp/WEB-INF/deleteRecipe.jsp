<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete recipe</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="container">

    <h1>Recette à supprimer:</h1>

    <div>
        <a>${recipe.id}</a>
        <a>${recipe.name}</a>
        <a>${recipe.type}</a>
        <a>${recipe.timePreparation}, ${recipe.timeRest}, ${recipe.timeCooking}</a>
        <a>${recipe.difficulty}</a>
        <a>${recipe.price}</a>
    </div>

    <div>
        <h5>Êtes vous sur de vouloir supprimer cette recette?</h5>
        <form method="post" action="${pageContext.request.contextPath}/auth/recipe/delete">
            <input hidden type="text" id="confirm" name="confirm" value="true">
            <input hidden type="text" id="recipeId" name="recipeId" value="${recipe.id}">
            <button type="submit">Oui</button>
        </form>
        <a href="${pageContext.request.contextPath}/recipe?recipeId=${recipe.id}">Non</a>
    </div>

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
