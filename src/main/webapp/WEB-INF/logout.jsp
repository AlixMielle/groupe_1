<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TP Recipe | Logout</title>
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

<jsp:include page="header.jsp"/>


<section id="section1" class="container-fluid bg-light">
    <div class="h5 mb-3 fw-normal p-1">Etes-vous sûr de vouloir vous déconnecter ?</div>
    <div class="container pb-3 align-items-center">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-5 col-lg-4 col-xl-4">
                <div class="bloc">
                    <form action="${pageContext.request.contextPath}/logout" method="post">
                        <input hidden value="${userId}" name="userId">
                        <button class="btn btn-lg p-2" type="submit" style="background-color: #EBB917">Se déconnecter</button>
                    </form>
                </div>
                <div class="col-auto">
                    <form action="${pageContext.request.contextPath}/auth/user/profile" method="get">
                        <button class="btn btn-lg p-2 btn-secondary" type="submit">Annuler</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- footer -->
<jsp:include page="footer.jsp"/>

</body>
</html>
