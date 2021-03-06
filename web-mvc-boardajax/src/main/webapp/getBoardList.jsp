<%@page import="com.spring.web.vo.UserVO"%>
<%@page import="com.spring.web.vo.PagingVO"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
List<BoardVO> boardList = (List)request.getAttribute("boardList");
session.getAttribute("userUno");
%>
<!DOCTYPE html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- <script language="javascript">location.href="http://localhost:8080/web/index.do" ;</script> -->
  
  <title>Market SONG</title>

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
        
      <a class="navbar-brand" href="updateUser.jsp">${sessionScope.userName }</a>
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
              <a class="dropdown-item" href="getBoardCategoryList.do?cno=2">?????? ??? ?????? ??? ???</a>
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
          
          <li class="nav-item">
          <c:if test="${not empty sessionScope.userUno }">
          <a class="nav-link" href="getCartList.do?uno=<%=session.getAttribute("userUno")%>">????????????</a>
        </c:if>
          </li>
          
          <li class="nav-item">
          <c:if test="${empty sessionScope.userName }">
          	<a class="nav-link" href="login.jsp">?????????</a>
          </c:if>
          </li>
          
          <li class="nav-item">
          <c:if test="${not empty sessionScope.userName }">
          <a class="nav-link" href="logout.do">????????????</a>
          </c:if>  
          </li>
          
        </ul>
      </div>
    </div>
  </nav>

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      
      <!-- ???????????? ?????? ????????? ??? -->
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('https://www.wallpaperkiss.com/wimg/b/103-1030252_big.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3>?????? ?????? ?????????</h3>
            <p>???????????? ???????????? ??????????????? ?????? ??? ???</p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('https://t1.daumcdn.net/liveboard/dietshin/e3d8b222933b478083197057e0c0f74b.JPG')">
          <div class="carousel-caption d-none d-md-block">
            <h3>?????? ????????? ?????? ??????</h3>
            <p>???????????? ????????? ????????? ???????????? ????????? ?????? ????????? ??????</p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('http://www.krei.re.kr/portlet-repositories/fckeditor/images/j2HDocBrSNs=/1406853582779.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3>?????? ?????? ????????? ?????? ???????????????</h3>
            <p>?????? ?????? ?????? ???????????? ?????? ??? ??????????</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container">

    <!-- Portfolio Section -->
    <h3 class="my-4">Market</h3>
    <hr>

    <!-- Search Widget -->
	<div class="card mb-4">
	<div class="card-header" align="left">
	<select name="searchType">
				<option value="TITLE">Title</option>
				<option value="CONTENT">Content</option>
	</select>
		<div class="card-body">
	<form action="getBoardList.do" method="post">
			<div class="input-group">
		<input type="text" class="form-control" name="searchKeyword">
		<span class="input-group-append">
			<button class="btn btn-secondary" type="submit" value="Search">Search</button>
		</span>
			</div>
		</form>
		</div>
	</div>
	</div>
	
<div class="row">
<% for(BoardVO board : boardList) {%>
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

      <div class="col-md-4 col-xs-6 portfolio-item">
        <h6><%=categoryName%></h6>
        <div class="card h-100">
          <a href="getBoard.do?bno=<%=board.getBno()%>"><img class="card-img-top" src="resources/images/<%=board.getFileName()%>" alt=""></a>
          <div class="card-body">
            <h5 class="card-title"><%=board.getTitle() %></h5>
            <p class="card-text"><%=board.getPrice() %> ???</p>
          </div>
        <a class="btn btn-primary" href="getBoard.do?bno=<%=board.getBno()%>">????????????
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
        </div>
      </div>
<%} %>
</div>
&nbsp;

<%
PagingVO paging = (PagingVO)request.getAttribute("pagingVO");

int listCnt = paging.getListCnt();

int curPage = paging.getPage(); // ?????? ?????????
int listSize = paging.getListCnt(); // 1page ?????? ??????

int rangeSize = paging.getRangeSize();
int range = paging.getRange();
int startPage = paging.getStartPage(); //2
int endPage = paging.getEndPage(); // 6
boolean prev = paging.isPrev();
boolean next = paging.isNext();
%>

<br>
    <!-- Pagination -->
    <ul class="pagination justify-content-center">
    <%if(prev) {%>
      <li class="page-item">
        <a class="page-link" href="getBoardList.do?curPage=<%=startPage-rangeSize%>&range=<%=range-1%>" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <%} %>
      
      <%for(int i=startPage;i<=endPage;i++){ %>
      <li class="page-item">
        <a class="page-link" href="getBoardList.do?curPage=<%=i%>&range=<%=range%>"><%=i %></a>
      </li>
	<%} %>
      
      <%if(next){ %>
      <li class="page-item">
        <a class="page-link" href="getBoardList.do?curPage=<%=startPage+rangeSize%>&range=<%=range+1%>" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only"><%=rangeSize %></span>
        </a>
      </li>
      <%} %>
    </ul>

    <!-- Call to Action Section -->
    <div class="row mb-4">
      <div class="col-md-8">
        <p>?????? ?????? ???????????? ???????????? ????????? ?????? ?????????????????? ??????????????? ????????? ????????? ???????????? ???????????????</p>
      </div>
      <div class="col-md-4">
        <a class="btn btn-lg btn-secondary btn-block" href="#">????????????</a>
      </div>
    </div>

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
