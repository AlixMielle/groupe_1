<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | Home</title>
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
                        <a class="nav-link" href="${pageContext.request.contextPath}/" style="color: #fff">Home</a>
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

    <div class="parallax">
        <p id="motto">Aucune idée pour cuisiner? Bienvenue sur Recipe TP!</p>
    </div>

</header>

<section id="section1" class="container-fluid bg-light">
    <h3 id="title1" class="text-uppercase text-center">Nos recettes du moment</h3>
    <div class="card-deck container-md p-5">
        <div class="row">
            <div class="col">
                <div class="card border-0 d-inline-block" style="width: 18rem;">
                    <img src="https://funsushis.fr/wp-content/uploads/2022/09/plateau-sushi-nice.jpg"
                         class="card-img-top img-fluid rounded h-221" alt="sushis" id="thumbnail">
                    <div class="card-body">
                        <h5 class="card-title text-uppercase text-center font-weight-bold p-1">Sushis</h5>
                        <a href="#" class="btn btn-primary border-0" style="background-color: #EBB917">Découvrir</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card border-0 d-inline-block" style="width: 18rem;">
                    <img src="https://assets.afcdn.com/recipe/20130823/10317_w1024h768c1cx1424cy2144.jpg"
                         class="card-img-top img-fluid rounded h-221" alt="courgettes farcies" id="thumbnail">
                    <div class="card-body">
                        <h5 class="card-title text-uppercase text-center font-weight-bold p-1">Courgettes farcies
                        </h5>
                        <a href="#" class="btn btn-primary border-0" style="background-color: #EBB917">Découvrir</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card border-0 d-inline-block" style="width: 18rem;">
                    <img src="https://www.cookomix.com/wp-content/uploads/2017/03/carbonade-flamande-thermomix.jpg"
                         class="card-img-top img-fluid rounded h-221" alt="Carbonade flamande" id="thumbnail">
                    <div class="card-body">
                        <h5 class="card-title text-uppercase text-center font-weight-bold p-1">Carbonade flamande
                        </h5>
                        <a href="#" class="btn btn-primary border-0" style="background-color: #EBB917">Découvrir</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="section2" class="container-fluid">
    <h3 id="services" class="text-uppercase text-center">Nos avantages</h3>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-4">
                <div class="bloc">
                    <div class="img">
                        <a href="${pageContext.request.contextPath}/recipe/all">
                            <img src="img/icons8-kitchen-room-64.png" alt="kitchen">
                        </a>
                    </div>
                    <div class="txt">Trouvez des recettes variées</div>
                </div>
            </div>
            <div class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-4">
                <div class="bloc">
                    <div class="img">
                        <a href="${pageContext.request.contextPath}/recipe/add">
                            <img src="img/icons8-communication-58.png" alt="exchange">
                        </a>
                    </div>
                    <div class="txt">Echangez vos idées</div>
                </div>
            </div>
            <div class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-4">
                <div class="bloc">
                    <div class="img">
                        <a href="${pageContext.request.contextPath}/recipe/add">
                            <img src="img/icons8-recipe-book-64.png" alt="recipe">
                        </a>
                    </div>
                    <div class="txt">Ajoutez vos propres recettes</div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="section3" class="container-fluid bg-light">
    <h3 id="title2" class="text-uppercase text-center">Nous découvrir</h3>
    <div id="box1" class="container">
        <div class="row">
            <div class="col-12 col-lg-6 col-md-8 col-sm-12">
                <div class="bloc">
                    <div>
                        <img src="https://images.unsplash.com/photo-1556910146-6121b9613959?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"
                             class="img-fluid" alt="cook" style="max-width: 50%;">
                    </div>
                </div>
            </div>
            <div class="col-12 col-lg-4 col-md-4 col-sm-12">
                <div class="bloc align-content-center">
                    <div class="txt">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minima id aspernatur
                        totam harum error reprehenderit voluptates dignissimos sapiente alias tempora a minus
                        repellat, nam saepe omnis quaerat necessitatibus asperiores aliquid.</div>
                </div>
            </div>
        </div>
    </div>

    <button type="button" class="btn btn-circle btn-floating btn-lg" style="background-color: #EBB917"
            id="btn-back-to-top">
        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-arrow-up"
             viewBox="0 0 16 16">
            <path fill-rule="evenodd"
                  d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z" />
        </svg>
    </button>

</section>


<!-- footer -->
<jsp:include page="/WEB-INF/footer.jsp"></jsp:include>


</body>
</html>
