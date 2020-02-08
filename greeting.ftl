<#import "parts/common.ftl" as c>
<@c.page>
    <div class="list-group">
        <li class="list-group-item"> Hello, user</li>
        <li class="list-group-item"><a href="/main">Main page</a></li>
        <li class="list-group-item"><div id="app">{{ message }}</div></li>
    </div>
    <div> hello ${name}</div>
    <script>
        var app = new Vue({
            el: '#app',
            data: {
                message: 'Привет, Vue!'
            }
        })
    </script>
</@c.page>
