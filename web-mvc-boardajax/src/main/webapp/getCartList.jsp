<%@page import="com.spring.web.vo.CartVO"%>
<%@page import="com.spring.web.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	List<CartVO> cartList = (List)request.getAttribute("cartList");
	session.getAttribute("userUno");
%>
<!DOCTYPE html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>getCartList.jsp</title>

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
            <a class="dropdown-item" href="getBoardCategoryList.do?cno=2">과일 ・ 견과 ・ 쌀</a>
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
        
        <li class="nav-item">
        <c:if test="${not empty sessionScope.userUno }">
          <a class="nav-link" href="getCartList.do?uno=<%=session.getAttribute("userUno")%>">주문배송</a>
        </c:if>
        </li>
        
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
    </ol>

<%for(CartVO cart : cartList){ %>
    <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="getBoard.do?bno=<%=cart.getBno()%>">
              <img class="img-fluid rounded" src="resources/images/market_bno<%=cart.getBno()%>.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
        <h5>Cart No [<%=cart.getCartNo() %>]</h5>
            <h5 class="card-title">가격 :&nbsp;<%=cart.getPrice()%> </h5>
            <form class="form-inline" id="stockForm" name="stockForm" method="post">
            <input type="hidden" class="form-control" id="cartNo" name="cartNo" value="<%=cart.getCartNo()%>">
	           
		            <input type="number" class="form-control" id="stock" name="stock" value="<%=cart.getStock() %>" min="1">
		            &nbsp;
		            <a href="#" onclick="fn_stock('${stock.code}')" class="btn btn-primary">수량 변경하기</a>
	            
            </form>
            &nbsp;<h5><p class="card-text"><%=cart.getShipment() %></p></h5>
            <!-- <a href="insertOrder.do" class="btn btn-primary">바로 구매하기</a> -->
            
        	<h5>총금액 : <%=cart.getPrice()*cart.getStock() %> 원</h5>
	<div class="form-group">
		<form class="form-inline" action="insertOrder.do" method="post" enctype="multipart/form-data">
        	<input type="hidden" class="form-control" id="payment" name="payment" value="<%=cart.getPrice()*cart.getStock() %>">
			<br>
			&nbsp;
				<span class="glyphicon glyphicon-chevron-right">
				<button type="submit" class="btn btn-primary">구매하기</button>
				</span>
		</form>

		<form class="form-inline" id="deleteCartForm" name="deleteCartForm" method="post">
        	<input type="text" class="form-control" id="cartNo" name="cartNo" value="<%=cart.getCartNo()%>"/>
        	<input type="text" class="form-control" id="uno" name="uno" value="<%=cart.getUno()%>"/>
			<br>
			&nbsp;
				<a href="#" onclick="fn_deleteCart('${deleteCart.code}')" class="btn btn-primary">삭제하기</a>
		</form>
	</div>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        <%=cart.getAddDate() %> &nbsp; user <%=cart.getUno() %>
      </div>
    </div>
<%} %>

<script>
function fn_stock(code){
	
	$.ajax({
		type :'POST'
		, url : "<c:url value='/cart/updateStock.do'/>"
		, data : $('#stockForm').serialize()
		, success : function(data) {
			if(data=="success"){
				alert("변경완료")
			}
		}
		, error : function(request, status, error) {
			
		}
	});
}

function fn_deleteCart(code){
	
	$.ajax({
		type :'POST'
		, url : "<c:url value='/cart/deleteCart.do'/>"
		, data : $('#deleteCartForm').serialize()
		, success : function(data) {
			if(data=="success"){
				location.reload();
				alert("삭제완료")
			}
		}
		, error : function(request, status, error) {
			
		}
	});
}

</script>



    <!-- Pagination -->
    <!-- <ul class="pagination justify-content-center mb-4">
      <li class="page-item">
        <a class="page-link" href="#">&larr; Older</a>
      </li>
      <li class="page-item disabled">
        <a class="page-link" href="#">Newer &rarr;</a>
      </li>
    </ul> -->

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
