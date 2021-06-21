<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<title>MarkrtSONG Join</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/checkout/">



<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">



<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

</script>
<!-- Custom styles for this template -->
<link href="resources/css/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
    
<div class="container">
  <div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="https://svgsilh.com/svg/1801287.svg" alt="" width="72" height="72">
    <h2>회원가입</h2>
    <p class="lead">들어올땐 마음대로지만 나갈땐 아니란다</p>
  </div>

  <div class="row">
    
    <div class="col-md-8 order-md-1">
      <h4 class="mb-3">회원정보를 입력해주세요</h4>
      <form class="needs-validation" action="insertUser.do" method="post" enctype="multipart/form-data">

        <div class="mb-3">
          <label for="id">ID</label>
          <input type="text" class="form-control" id="id" placeholder="hong" name="id" required>
          <div class="invalid-feedback">
            ID를 입력해주세요!
          </div>
        </div>
        
        <div class="mb-3">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" placeholder="password" name="password" required>
          <div class="invalid-feedback">
            Password를 입력해주세요!
          </div>
        </div>
        
        <div class="mb-3">
          <label for="name">Name</label>
          <input type="text" class="form-control" id="name" placeholder="Hong Gil Dong" name="name" required>
          <div class="invalid-feedback">
            이름을 입력해주세요!
          </div>
        </div>

        <hr class="mb-4">
        <button class="btn btn-primary btn-lg btn-block" type="submit">Continue to join</button>
      </form>
    </div>
  </div>
</div>
 

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">Copyright &copy;By YB SONG ,2020</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="index.jsp">Home</a></li>
      <li class="list-inline-item"><a href="getBoardList.do">Market</a></li>
      <li class="list-inline-item"><a href="login.jsp">Login</a></li>
    </ul>
  </footer>
</div>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="resources/vendor/jquery/jquery.slim.min.js"><\/script>')</script><script src="resources/vendor/js/bootstrap.bundle.min.js"></script>

      
        <script src="resources/js/form-validation.js"></script>
  </body>
</html>
