<%@page import="com.spring.web.vo.PagingVO"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%List<BoardVO> boardList = (List)request.getAttribute("boardList");
%>
<%-- <%
PagingVO paging = (PagingVO)request.getAttribute("pagingVO");

int listCnt = paging.getListCnt();

int curPage = paging.getPage(); // 현재 페이지
int listSize = paging.getListCnt(); // 1page 목록 갯수

int rangeSize = paging.getRangeSize();
int range = paging.getRange();
int startPage = paging.getStartPage(); //2
int endPage = paging.getEndPage(); // 6
boolean prev = paging.isPrev();
boolean next = paging.isNext();
%> --%>
<!DOCTYPE html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>getBoardCategoryList.jsp</title>
  
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
    <h1 class="mt-4 mb-3">Category
      <small>List</small>
    </h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="getBoardList.do">Market</a>
      </li>
<% String categoryName = "";
      	switch (boardList.get(0).getCno()) {
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
      <li class="breadcrumb-item active"><a href="getBoardCategoryList.do?cno=<%=boardList.get(0).getCno()%>"><%=categoryName%></a></li>
    </ol>
    
<!--     Search Widget
	<div class="card mb-4">
	<div class="card-header" align="left">
	<select name="searchType">
				<option value="TITLE">Title</option>
				<option value="CONTENT">Content</option>
	</select>
		<div class="card-body">
	<form action="getBoardCategoryList.do" method="post">
			<div class="input-group">
		<input type="text" class="form-control" name="searchKeyword">
		<span class="input-group-append">
			<button class="btn btn-secondary" type="submit" value="Search">Search</button>
		</span>
			</div>
		</form>
		</div>
	</div>
	</div> -->
    
      <%-- <h6><p align="right"><%=curPage %> page</h6> --%>


<% for(BoardVO board : boardList) {%>
    <!-- Project One -->
    <div class="row">
      <div class="col-md-7">
        <a href="getBoard.do?bno=<%=board.getBno()%>">
          <img class="img-fluid rounded mb-3 mb-md-0" src="resources/images/<%=board.getFileName()%>" alt="">
        </a>
      </div>
      <div class="col-md-5">
        <h3><%=board.getTitle()%></h3>
        <p><%=board.getPrice()%> 원</p>
        <a class="btn btn-primary" href="getBoard.do?bno=<%=board.getBno()%>"> 구매하기
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->
<hr>
<%} %>



<%-- start: <%=startPage %> / end: <%=endPage %> / 현재구간: <%=range %> / 현재페이지: <%=curPage %><br> --%>

<%-- <%if(prev) {%>
<a href="getBoardCategoryList.do?curPage=<%=startPage-rangeSize%>&range=<%=range-1%>">[이전<%=rangeSize %>개]</a>
<%} %>
<%for(int i=startPage;i<=endPage;i++){ %>
<a href="getBoardList.do?curPage=<%=i%>&range=<%=range%>">[<%=i%>]</a>
<%} %>
<%if(next){ %>
<a href="getBoardList.do?curPage=<%=startPage+rangeSize%>&range=<%=range+1%>">[이후<%=rangeSize %>개]</a>
<%} %> --%>

<br>
    <%-- <!-- Pagination -->
    <ul class="pagination justify-content-center">
    <%if(prev) {%>
      <li class="page-item">
        <a class="page-link" href="getBoardCategoryList.do?curPage=<%=startPage-rangeSize%>&range=<%=range-1%>" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <%} %>
      
      <%for(int i=startPage;i<=endPage;i++){ %>
      <li class="page-item">
        <a class="page-link" href="getBoardCategoryList.do?curPage=<%=i%>&range=<%=range%>"><%=i %></a>
      </li>
	<%} %>
      
      <%if(next){ %>
      <li class="page-item">
        <a class="page-link" href="getBoardCategoryList.do?curPage=<%=startPage+rangeSize%>&range=<%=range+1%>" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only"><%=rangeSize %></span>
        </a>
      </li>
      <%} %>
    </ul> --%>

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

