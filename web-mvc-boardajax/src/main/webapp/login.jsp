<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>LogIn.jsp</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/sign-in/">

    

    <!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">



    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="resources/css/signin.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<form class="form-signin" action="login.do" method="post">
  <img class="mb-4" src="https://svgsilh.com/svg/1801287.svg" alt="" width="72" height="72">
  <h1 class="h3 mb-3 font-weight-normal">LogIn</h1>
  
  <label for="id" class="sr-only">ID</label>
  <input type="text" name="id" value="${userVO.id }" class="form-control" placeholder="ID" required autofocus>
  
  <label for="password" class="sr-only">Password</label>
  <input type="password" name="password" class="form-control" placeholder="Password" required>
  <div class="checkbox mb-3">
  </div>
  <input class="btn btn-lg btn-primary btn-block" type="submit" value="LogIn">LogIn</input>
  <p class="mt-5 mb-3 text-muted">Copyright &copy;By YB SONG ,2020</p>
</form>


  </body>
</html>
