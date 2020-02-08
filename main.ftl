<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<#--        <@l.logout />-->
        <a href="/user" class="text-danger">User list</a>
    <div>
        <form method="post" enctype="multipart/form-data">
            <#--        <input type="text" name="text" placeholder="Введите сообщение" />-->
            <#--        <input type="text" name="tag" placeholder="Тэг">-->
            <#--        <input type="file" name="file">-->
            <#--        <button type="submit">Добавить</button>-->
            <div class="input-group input-group-sm mb-3">
                <input type="text" name="text" aria-label="First name" class="form-control" placeholder="Введите сообщение">
                <input type="text" name="tag" aria-label="Last name" class="form-control" placeholder="Тэг">
                <input type="file" name="file" >
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Добавить</button>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
        </form>
    </div>
    <form method="get" action="/main" class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text">List messages</span>
        </div>
        <input type="text" name="filter" value="${filter?ifExists}" placeholder="Find by tag">
        <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="submit">Найти</button>
        </div>
    </form>
<#--    <div>Список сообщений</div>-->
<#--    <form method="get" action="/main" >-->
<#--        <input type="text" name="filter" value="${filter?ifExists}" placeholder="Find by tag">-->
<#--        <button type="submit">Найти</button>-->
<#--    </form>-->

    <!--    из конструктора класса messege впринципе понятно откуда всё появляется и выводим в мейн контроллере-->
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <!--        потому что там гет автор нейм поэтому такое название. типа без get пишешь!!! загоны из груви он написал!-->
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}">
                </#if>
            </div>
        </div>
    <#else>
        No message
    </#list>
</@c.page>