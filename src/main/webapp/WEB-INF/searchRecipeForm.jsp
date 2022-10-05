<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search recipes</title>
</head>
<body>
    <div>
        <form method="post" action="${pageContext.request.contextPath}/recipe/search">
            <label for="searchName">Chercher une recette par son nom:</label>
            <input type="text" id="searchName" name="searchName">
            <button type="submit">Chercher</button>
        </form>
    </div>

    <div>
        <form method="post" action="${pageContext.request.contextPath}/recipe/search">
            <p>Chercher une recette par son type:</p>
            <input type="radio" id="entree" name="type" value="ENTREE">
            <label for="entree">Entrée</label><br>
            <input type="radio" id="plat" name="type" value="PLAT">
            <label for="plat">Plat</label><br>
            <input type="radio" id="dessert" name="type" value="DESSERT">
            <label for="dessert">Dessert</label>
            <button type="submit">Chercher</button>
        </form>
    </div>

    <div>
        <form method="post" action="${pageContext.request.contextPath}/recipe/search">
            <p>Chercher une recette par son niveau de difficulté:</p>
            <input type="radio" id="easy" name="difficulty" value="EASY">
            <label for="easy">Facile</label><br>
            <input type="radio" id="medium" name="difficulty" value="MEDIUM">
            <label for="medium">Moyen</label><br>
            <input type="radio" id="hard" name="difficulty" value="HARD">
            <label for="hard">Difficile</label>
            <button type="submit">Chercher</button>
        </form>
    </div>
</body>
</html>
