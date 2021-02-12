<#assign sf=JspTaglibs["http://www.springframework.org/tags/form"]>
<html>
<body>
<h2>Sign up</h2>
<a href="/">to com</a>
<div>from ftl</div>
<div>

    <@sf.form action="/signUp" method="post" modelAttribute="user">
        <div>
            <@sf.label path="name">Name</@sf.label>
            <@sf.input path="name" />
            <@sf.errors path="name"/>
        </div>
        <div>
            <input type="text" name="role" value="user_role" hidden/>
        </div>
        <div>
            <label for="password">Password</label>
            <input type="password" name="password" placeholder="password"/>
        </div>
        <div>
            <input type="submit">
        </div>
    </@sf.form>

    <#--    <form action="/users_new" method="post">-->

    <#--        <input type="text" name="name" placeholder="name"/>-->
    <#--        <input type="password" name="password" placeholder="password"/>-->
    <#--        <input type="text" name="role" value="user" hidden/>-->
    <#--        <input type="submit">-->
    <#--    </form>-->

</div>
</body>
</html>
