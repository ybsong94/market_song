<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Market SONG</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/cover/">

    

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
    <link href="resources/css/cover.css" rel="stylesheet">
  </head>
  <body class="text-center">
    
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-auto">
    <div class="inner">
      <h3 class="masthead-brand">Market Song</h3>
      <nav class="nav nav-masthead justify-content-center">
        <a class="nav-link active" href="index.jsp">Home</a>
        <a class="nav-link" href="getBoardList.do">Market</a>
        <c:if test="${not empty sessionScope.userName }">
        <a class="nav-link" href="userDelete.jsp">Withdrawal</a>
         </c:if>
        <a class="nav-link" href="insertBoard.jsp">Write</a>
      </nav>
    </div>
  </header>

  <main role="main" class="inner cover">
    <h1 class="cover-heading">Welcome to Market Song!</h1>
    <p class="lead">세상에서 가장 싸고 건강한 마켓은 아니지만 적당히 골라서 빠르게 배송 받으려면 회원가입부터 해주세요.</p>
    <p class="lead">
      <a href="join.jsp" class="btn btn-lg btn-secondary">회원가입</a>
    </p>
  </main>

  <footer class="mastfoot mt-auto">
    <div class="inner">
      <p>Copyright &copy;By YB SONG ,2020</a>.</p>
    </div>
  </footer>
</div>


    
  </body>
</html>
