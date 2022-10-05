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
            <a>${recipe.type}</a>
            <a>${recipe.timePreparation}, ${recipe.timeRest}, ${recipe.timeCooking}</a>
            <a>${recipe.difficulty}</a>
            <a>${recipe.price}</a>
            <c:forEach items="${recipe.ingredient}" var="ingredient">
                <a>${ingredient.name} : ${ingredient.qte} g</a>
            </c:forEach>
        </div>

</div>
</body>
</html>
