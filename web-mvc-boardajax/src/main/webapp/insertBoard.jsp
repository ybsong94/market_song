<%@page import="com.spring.web.vo.UserVO"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>


<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Marktet SONG</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/modern-business.css" rel="stylesheet">

</head>

<body>

    <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="getBoardList.do">Market SONG</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
        
          <a class="navbar-brand" href="getUser.do">${sessionScope.userName }</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
          
          
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             Category
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=1">채소</a>
              <a class="dropdown-item" href=getBoardCategoryList.do?cno=2>과일 ・ 견과 ・ 쌀</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=3">수산 ・ 해산 ・ 건어물</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=4">정육 ・ 계란</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=5">국 ・ 반찬 ・ 메인요리</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=6">샐러드 ・ 간편식</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=7">면 ・ 양념 ・ 오일</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=8">생수 ・ 음료 ・ 우유 ・ 커피</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=9">간식 ・ 과자 ・ 떡</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=10">건강식품</a>
            </div>
          </li>
          
         <c:if test="${not empty sessionScope.userUno }">
          <a class="nav-link" href="getCartList.do?uno=<%=session.getAttribute("userUno")%>">주문배송</a>
        </c:if>
          
          <li class="nav-item">
          <c:if test="${empty sessionScope.userName }">
          	<a class="nav-link" href="login.jsp">로그인</a>
          </c:if>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="logout.do">로그아웃</a>
          </li>
        
        </ul>
      </div>
    </div>
  </nav>
  
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="getBoardList.do">Market</a>
      </li>
      <li class="breadcrumb-item active">
    </ol>
    
    <h1>Board Write</h1>
    <!-- Portfolio Item Row -->
    <div class="row">
		<form class="form-inline" action="insertBoard.do" method="post" enctype="multipart/form-data">
      <div class="col-md-8">
      	<input type="file" name="uploadFile">
      </div>

      <div class="col-md-4">
        <h5 class="my-3"> TITLE
       	<input type="text" class="form-control" id="title" name="title">
        </h5>
     <h4>   
    <select name="cno" >
	    <option value="none">=== 선택 ===</option>
	    <option value="1">채소</option>
	    <option value="2">과일 ・ 견과 ・ 쌀</option>
	    <option value="3">수산 ・ 해산 ・ 건어물</option>
	    <option value="4">정육 ・ 계란</option>
	    <option value="5">국 ・ 반찬 ・ 메인요리</option>
	    <option value="6">샐러드 ・ 간편식</option>
	    <option value="7">면 ・ 양념 ・ 오일</option>
	    <option value="8">생수 ・ 음료 ・ 우유 ・ 커피</option>
	    <option value="9">간식 ・ 과자 ・ 떡</option>
	    <option value="10">건강식품</option>
  	</select>
  	</h4>
        <p> <h5>CONTENT</h5>
       	<input type="text" class="form-control" id="content" name="content">
        </p>
        
       	<hr>
          <td><h5>UNIT</h5>
        	<input type="text" class="form-control" id="unit" name="unit">
          </td>
        <hr>
        
          <td><h5>WEIGHT</h5>
        	<input type="text" class="form-control" id="weight" name="weight">
          </td>
        <hr>
        
          <td><h5>SHIPMENT</h5>
        	<input type="text" class="form-control" id="shipment" name="shipment">
          </td>
        <hr>
        
          <td><h5>ORIGIN</h5>
        	<input type="text" class="form-control" id="origin" name="origin">
          </td>
        <hr>
        
          <td><h5>BOX</h5>
        	<input type="text" class="form-control" id="box" name="box">
          </td>
        <hr>
        
          <td><h5>PRICE</h5>
        	<input type="number" class="form-control" id="price" name="price" min="0">
          </td>
          <hr>
				<span class="glyphicon glyphicon-chevron-right">
				<button type="submit" class="btn btn-primary">글 등록</button>
				</span>
				
		</div>
          &nbsp;
        
		</form>
	</div>
</div>

    <!-- 제품 상세설명 이미지 첨부 -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy;By YB SONG ,2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
