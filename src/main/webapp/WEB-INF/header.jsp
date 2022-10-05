<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href= "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
  <script src="js/bootstrap.bundle.min.js" defer></script>
  <script src="js/toTop.js" defer></script>
</head>

<body>
<header>
  <nav class="navbar navbar-expand-md navbar-light" style="background-color: #EBB917" id="navbar">
    <div class="container-md">
      <a href="${pageContext.request.contextPath}/" class="navbar-brand">
        <img src="img/logo-60.png" class="img-fluid" alt="logo recipe" id="logo">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggler"
              aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
        <img src="img/icons8-hamburger-24.png" alt="burger menu">
      </button>
      <div class="collapse navbar-collapse" id="navbarToggler">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#" style="color: #fff">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/login" style="color: #fff">Connexion</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" style="color: #fff" id="navbarDropdownMenuLink"
               role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Profil
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/edit" style="color: #EBB917">Éditer</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/delete" style="color: #EBB917">Supprimer</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/profile" style="color: #EBB917">Consulter</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" style="color: #fff" id="navbarDropdownMenuLink"
               role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Recettes
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/recipe/add" style="color: #EBB917">Ajouter</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/recipe/delete" style="color: #EBB917">Supprimer</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/recipe/edit" style="color: #EBB917">Editer</a></li>
              <li><a class="dropdown-item" href="#" style="color: #EBB917">Rechercher</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/recipe" style="color: #EBB917">Obtenir</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <img src="img/icons8-search-30.png" alt="search icon" class="img-fluid"
                   style=" max-width:90%">
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

</body>
</html>