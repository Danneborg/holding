<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ростелеком</title>

    <!-- Bootstrap core CSS -->
    <link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/signin.css" />" rel="stylesheet">
</head>

<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg static-top border-bottom shadow-sm">
      <span class="navbar-brand">
		<img src="<c:url value="/resources/images/logo1.png"/>" alt="logo">
	  </span>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
    </div>
</nav>

<!-- Page Content -->
<div class="container text-center">
    <div class='row'>
        <div class='col-lg-12 col-md-12 col-12'>
            <p class="h4 mb-3 font-weight-normal">Пожалуйста, укажите имя вашей доменной учетной записи в формате:
                <br>Имя_домена\имя_пользователя
                <br>Например:
                <br>GD\A.Petrov</p>
        </div>
    </div>
    <div class='row'>
        <div class='col-lg-12 col-md-12 col-12'>
            <form id='signIn' class="form-signin" action='login/process' method='post'>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <label for="username" class="sr-only">Логин</label>
                <input name="username" type="text" id="username" class="form-control" placeholder="Логин" required
                       autofocus>
                <div class="password">
                    <label for="password-input" class="sr-only">Password</label>
                    <input type="password" id="password-input" placeholder="Введите пароль" class="form-control" name="password" required>
                    <a href="#" class="password-control" ></a>
                </div>
                <button class="sendButton btn btn-lg btn-primary btn-block signButton" type="submit">Вход</button>
            </form>
        </div>
    </div>
</div>
<footer class="page-footer font-small">

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">Ростелеком &copy; 2019-2020
    </div>
    <!-- Copyright -->
</footer>
<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/showPassword.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/browserDetect.js" />" type="text/javascript"></script>
</body>
</html>