<#--<#macro login path>-->
<#--    <form action="${path}" method="post">-->
<#--        <div><label> User Name : <input type="text" name="username"/> </label></div>-->
<#--        <div><label> Password: <input type="password" name="password"/> </label></div>-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}" />-->
<#--        <div><input type="submit" value="Sign In"/></div>-->
<#--    </form>-->
<#--</#macro>-->

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>

<#macro login path>
    <form action="${path}" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">User name</label>
            <input type="text" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter u name">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
        </div>
        <div><input type="submit" value="Sign In"   class="btn btn-danger"></div>
    </form>
</#macro>