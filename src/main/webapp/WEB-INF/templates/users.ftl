<html>
<body>
<h2>Hello World!</h2>
<a href="/">com</a>
<div>from ftl</div>

<div>
    <ul>
        <#if users?has_content>
            <#list users as user>
                <li>${user.name} ${user.role}</li>
            </#list>
        <#else>
            <p>no users yet</p>
        </#if>
    </ul>
    <div>
        ${user1.getName()}
        ${user1.getRole()}
    </div>

    <div><a href="/logout">logout</a></div>
</div>
</body>
</html>
