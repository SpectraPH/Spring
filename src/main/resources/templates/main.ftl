<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <div class="container">
        <a href="#" class="navbar-brand">TEXT</a>
        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarMenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarMenu">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="#" class="nav-link">HEADER</a>
                </li>
                <li class="nav-item">
                    <a href="" class="nav-link">ITEM2</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container pt-5">



    <#list pages as page>
        <div class="row" id="content-block">
            <div class="col-4 p-0">
                <#if page.fileName??>
                    <img src="/img/${page.fileName}"
                         id="content-img">
                <#else>
                    <img src="http://chto-takoe-lyubov.net/wp-content/uploads/2017/08/voprositelnyy-znak-stikhi.jpg"
                         id="content-img">
                </#if>

            </div>
            <div class="col-8 pt-3 pl-0 pr-2">
                <a href="/page?page_id=${page.id}">${page.header}</a>
                <p>${page.headerText}</p>
            </div>
        </div>
        <br>
    </#list>
</div>



<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
</body>

</html>