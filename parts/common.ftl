<#import "login.ftl" as l>
<#macro page>
    <!DOCTYPE html>
    <html>
    <head>
        <link rel="stylesheet" href="/static/kek.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>LoLike</title>
        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
<#--    цвета bg-light bg-primary-->
            <ul class="nav nav-pills bg-light">
                <!-- Image and text -->
                <nav class="navbar navbar-light bg-light">
                    <a class="navbar-brand" href="http://localhost:8080">
                        <img src="http://s1.iconbird.com/ico/2013/10/457/w16h161380663248girl16x16.png" width="30" height="30" class="d-inline-block align-top" alt="">
                        Default
                    </a>
                </nav>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/registration">Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/main">Main</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/user">Admin Panel</a>
                </li>
                <li class="nav-item" >
                    <a class="nav-link disabled">naebka))</a>
                </li>
<#--                <li class="nav-item dropdown">-->
<#--                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>-->
<#--                    <div class="dropdown-menu">-->
<#--                        <a class="dropdown-item" href="#">Action</a>-->
<#--                        <a class="dropdown-item" href="#">Another action</a>-->
<#--                        <a class="dropdown-item" href="#">Something else here</a>-->
<#--                        <div class="dropdown-divider"></div>-->
<#--                        <a class="dropdown-item" href="#">Separated link</a>-->
<#--                    </div>-->
<#--                </li>-->
                <li class="nav-item">
                    <@l.logout />
                </li>
<#--                <form class="raz "  >-->
<#--                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">-->
<#--                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
<#--                </form>-->
            </ul>



<#--            -->
<#--            <nav class="navbar navbar-expand-lg navbar-light bg-light">-->
<#--                <a class="navbar-brand" href="/">Sweater</a>-->
<#--                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">-->
<#--                    <span class="navbar-toggler-icon"></span>-->
<#--                </button>-->

<#--                <div class="collapse navbar-collapse" id="navbarSupportedContent">-->
<#--                    <ul class="navbar-nav mr-auto">-->
<#--                        <li class="nav-item">-->
<#--                            <a class="nav-link" href="/">Home</a>-->
<#--                        </li>-->
<#--                        <li class="nav-item">-->
<#--                            <a class="nav-link" href="/main">Messages</a>-->
<#--                        </li>-->
<#--                        <#if isAdmin>-->
<#--                            <li class="nav-item">-->
<#--                                <a class="nav-link" href="/user">User list</a>-->
<#--                            </li>-->
<#--                        </#if>-->
<#--                    </ul>-->

<#--                    <div class="navbar-text mr-3">${name}</div>-->
<#--                    <@l.logout />-->
<#--                </div>-->
<#--            </nav>-->
    <#nested>
    </body>
    </html>
</#macro>


