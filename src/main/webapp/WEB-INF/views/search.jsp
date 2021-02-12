<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Холдинги</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/starter-template/">
    <!-- Bootstrap core CSS -->
    <link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/extendedOptionsVer2.css" />" rel="stylesheet">
</head>

<body>

<nav class="navbar navbar-expand-md border-bottom shadow-sm fixed-top navbar-light bg-light">
    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <div class="row headerRow">
            <div class="col-3">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <div class="headerLogo">
                            <img src="<c:url value="/resources/images/logo1.png"/>" alt="logo">
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-9">
                <h5>Поиск холдингов</h5>
                <form name="formRefferencesModal" id="formRefferences">
                    <div class="form-row">
                        <div class="col-sm-4 col-lg-4 my-1">
                            <input type="text" class="form-control" id="paramName" name="paramName"
                                   placeholder="ИНН, ФИО КАМ, Наименование предприятия, Регион, Макрорегион" required="">
                        </div>
                        <div class="col-sm-3 col-lg-3 my-1">
                            <select class="form-control" id="inputDataModal" name="inputDataModal" required>
                                <option value="Name" selected="selected">ИНН</option>
                                <option value="kam">ФИО КАМ</option>
                                <option value="name_hq_holding">Наименование предприятия</option>
                                <option value="region">Регион</option>
                                <option value="macro_region">Макрорегион</option>
                            </select>
                        </div>
                        <div class="col-auto my-1">
                            <button type="submit" class="btn btn-primary">Найти</button>
                        </div>
                        <div class="col-auto my-1 logOutDiv">
                            <a class="btn btn-outline-success my-2 my-sm-0 logOutButton" type="button" href="/holding2/logout">Выход</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</nav>

<main role="main">

    <div class="row">
        <div class="col-10 offset-1" id="content">
        </div>
    </div>

    <div id="ajaxDiv"></div>
    <div>
        <img id='loadImg' src="<c:url value="/resources/images/load.gif"/>" alt="loadGif"/>
    </div>
</main><!-- /.container -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/holdingsSearch.js" />" type="text/javascript"></script>
<%--<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />" type="text/javascript"></script>--%>
</body>
</html>