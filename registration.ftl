<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <div class="alert alert-primary">
        <h2>Add new user</h2></br>
        это типо если мессэдж есть то будет исполнятся
    </div>
    ${message}
<#--    но изза crf если повторно регаемся то ошибка выскакивает-->
    <@l.login "/registration"/>
</@c.page>