<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search recipes</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css' />"/>
    <link rel="stylesheet" href="<c:url value='/css/main.css' />"/>
    <script src="js/bootstrap.bundle.min.js" defer></script>
    <script src="js/toTop.js" defer></script>
</head>
<body>

<jsp:include page="/WEB-INF/header.jsp"/>

<h1 class="h3 mb-3 fw-normal p-1">Vous recherchez une recette ?</h1>

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

<jsp:include page="/WEB-INF/footer.jsp"/>
</body>
</html>
