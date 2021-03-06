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
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=1">??????</a>
              <a class="dropdown-item" href=getBoardCategoryList.do?cno=2>?????? ??? ?????? ??? ???</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=3">?????? ??? ?????? ??? ?????????</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=4">?????? ??? ??????</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=5">??? ??? ?????? ??? ????????????</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=6">????????? ??? ?????????</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=7">??? ??? ?????? ??? ??????</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=8">?????? ??? ?????? ??? ?????? ??? ??????</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=9">?????? ??? ?????? ??? ???</a>
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=10">????????????</a>
            </div>
          </li>
          
         <c:if test="${not empty sessionScope.userUno }">
          <a class="nav-link" href="getCartList.do?uno=<%=session.getAttribute("userUno")%>">????????????</a>
        </c:if>
          
          <li class="nav-item">
          <c:if test="${empty sessionScope.userName }">
          	<a class="nav-link" href="login.jsp">?????????</a>
          </c:if>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="logout.do">????????????</a>
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
		    case 1:  categoryName = "??????";
		      	break;
			case 2:  categoryName = "?????? ??? ?????? ??? ???";
			      break;
			case 3:  categoryName = "?????? ??? ?????? ??? ?????????";
			      break;
			case 4:  categoryName = "?????? ??? ??????";
			      break;
			case 5:  categoryName = "??? ??? ?????? ??? ????????????";
			      break;
			case 6:  categoryName = "????????? ??? ?????????";
			      break;
			case 7:  categoryName = "??? ??? ?????? ??? ??????";
			      break;
			case 8:  categoryName = "?????? ??? ?????? ??? ?????? ??? ??????";
			      break;
			case 9:  categoryName = "?????? ??? ?????? ??? ???";
			      break;
			case 10: categoryName = "????????????";
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
          <td>???????????? : <%=board.getUnit() %></td>
        <hr>
          <td>?????? / ?????? : <%=board.getWeight() %></td>
        <hr>
          <td>???????????? : <%=board.getShipment() %></td>
        <hr>
          <td>????????? : <%=board.getOrigin() %></td>
        <hr>
          <td>???????????? : <%=board.getBox()%></td>
        <!-- <hr>
          <td>????????????</td> <br>
          <td>??? ????????? ????????? ?????? ????????? ????????? ?????? ????????? ????????????.</td> -->
        <hr>
		<div class="form-group">
		<form class="form-inline" action="insertCart.do" method="post" enctype="multipart/form-data">
        	<input type="hidden" class="form-control" id="uno" name="uno" value="<%=session.getAttribute("userUno")%>">
        	<input type="hidden" class="form-control" id="bno" name="bno" value="<%=board.getBno() %>">
        	<input type="hidden" class="form-control" id="shipment" name="shipment" value="<%=board.getShipment() %>">
        	<input type="hidden" class="form-control" id="price" name="price" value="<%=board.getPrice() %>"><h4><%=board.getPrice() %> ???</h4>
			<input type="number" class="form-control" id="stock" name="stock" value="1" min="1">
			<br>
			&nbsp;
				<span class="glyphicon glyphicon-chevron-right">
				<button type="submit" class="btn btn-primary">??????????????? ??????</button>
				</span>
		</form>
			</div>
        </ul>
        
	</div>
</div>

    <!-- ?????? ???????????? ????????? ?????? -->
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
