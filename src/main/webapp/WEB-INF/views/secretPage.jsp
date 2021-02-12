<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>this is page for admins</h2>


<%--<c:if test="${user1.getRole().equals('ROLE_USER')}">--%>
<%--    <c:redirect url="/commonPage"/>--%>
<%--</c:if>--%>


<div>
    <p>${user1.getName()}</p>
    <p>${user1.getRole()}</p>
</div>
<p>
    <a href="/logout">logout</a>
</p>
</body>
</html>
