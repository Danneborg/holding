<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="/login/process" method="post">
    <div>
        Name: <input name="username" type="text">
    </div>
    <div>
        Password: <input name="password" type="password">
    </div>
    <input type="submit">
</form>
<#if error??>
    <p>Bad credentials</p>
</#if>
</body>
</html>


