<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
<div class="container content pt-3">
    <form method="post" enctype="multipart/form-data">
        <div class="row">
            <div id="form-image-prev">
                <div>
                    <img id='img-upload' src="https://www.thedome.org/wp-content/uploads/2019/06/300x300-Placeholder-Image.jpg"
                         class="content-img" alt="your image">
                </div>

                <div id="image-form">
                    <input type="file" name="file" id="imgInp">
                </div>

            </div>
            <div id="form-text-prev">
                <textarea name="header" class="form-control" rows="3"></textarea>
                <textarea name="headerText" class="form-control" rows="9"></textarea>
            </div>
        </div>
        <div class="row pt-3">
            <textarea name="text" class="form-control" rows="20"></textarea>
        </div>
        <button type="submit">Add</button>
    </form>
</div>





<script src="js/js.js"></script>
</body>

</html>