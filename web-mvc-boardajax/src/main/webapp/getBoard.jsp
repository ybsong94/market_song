<%@page import="com.spring.web.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="com.spring.web.vo.UserVO"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	BoardVO board = (BoardVO)request.getAttribute("board");
	//List<ReviewVO> reviewList = (List<ReviewVO>)request.getAttribute("reviewList");
	session.getAttribute("userUno");
	session.getAttribute("userName");
%>
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
      <% String categoryName = "";
      	switch (board.getCno()) {
		    case 1:  categoryName = "채소";
		      	break;
			case 2:  categoryName = "과일 ・ 견과 ・ 쌀";
			      break;
			case 3:  categoryName = "수산 ・ 해산 ・ 건어물";
			      break;
			case 4:  categoryName = "정육 ・ 계란";
			      break;
			case 5:  categoryName = "국 ・ 반찬 ・ 메인요리";
			      break;
			case 6:  categoryName = "샐러드 ・ 간편식";
			      break;
			case 7:  categoryName = "면 ・ 양념 ・ 오일";
			      break;
			case 8:  categoryName = "생수 ・ 음료 ・ 우유 ・ 커피";
			      break;
			case 9:  categoryName = "간식 ・ 과자 ・ 떡";
			      break;
			case 10: categoryName = "건강식품";
			      break;
		}%>
		<%=categoryName%></li>
    </ol>
    <!-- Portfolio Item Row -->
    <div class="row">

      <div class="col-md-8">
        <img class="img-fluid" src="resources/images/<%=board.getFileName()%>" alt="">
      </div>

      <div class="col-md-4">
        <h3 class="my-3"><%=board.getTitle() %></h3>
        <p><%=board.getContent() %></p>
        <ul>
       	<hr>
          <td>판매단위 : <%=board.getUnit() %></td>
        <hr>
          <td>중량 / 용량 : <%=board.getWeight() %></td>
        <hr>
          <td>배송구분 : <%=board.getShipment() %></td>
        <hr>
          <td>원산지 : <%=board.getOrigin() %></td>
        <hr>
          <td>포장타입 : <%=board.getBox()%></td>
        <!-- <hr>
          <td>안내사항</td> <br>
          <td>이 오이는 보이는 것과 다르게 농약을 쳐서 재배한 것입니다.</td> -->
        <hr>
		<div class="form-group">
		<form class="form-inline" action="insertCart.do" method="post" enctype="multipart/form-data">
        	<input type="hidden" class="form-control" id="uno" name="uno" value="<%=session.getAttribute("userUno")%>">
        	<input type="hidden" class="form-control" id="bno" name="bno" value="<%=board.getBno() %>">
        	<input type="hidden" class="form-control" id="shipment" name="shipment" value="<%=board.getShipment() %>">
        	<input type="hidden" class="form-control" id="price" name="price" value="<%=board.getPrice() %>"><h4><%=board.getPrice() %> 원</h4>
			<input type="number" class="form-control" id="stock" name="stock" value="1" min="1">
			<br>
			&nbsp;
				<span class="glyphicon glyphicon-chevron-right">
				<button type="submit" class="btn btn-primary">장바구니에 담기</button>
				</span>
		</form>
			</div>
        </ul>
        
	</div>
</div>

    <!-- 제품 상세설명 이미지 첨부 -->
	<!-- <img class="card-img-top" src="resources/images/market_bno1.jpg" alt=""> -->



<%@ include file="/review.jsp" %>
        <!-- Single Comment -->


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
