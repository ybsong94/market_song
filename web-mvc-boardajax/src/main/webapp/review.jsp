<%@page import="com.spring.web.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
            <a class="nav-link" href="logout.do">????????????</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">


<!-- Comments Form -->
        <div class="card my-4">
          <h5 class="card-header">Leave a Review</h5>
          <div class="card-body">
            <form id="reviewForm" name="reviewForm" method="post">
              <div class="form-group">
                <textarea class="form-control" rows="3" name="comment" id="comment"></textarea>
                <a href="#" onclick="fn_review('${review.code}')" class="btn btn-primary">??????</a>
              <input type="hidden" id="bno" name="bno" value="${board.bno}"/>
              <input type="hidden" id="uno" name="uno" value="<%=session.getAttribute("userUno")%>"/>
              <input type="hidden" id="name" name="name" value="<%=session.getAttribute("userName")%>"/>
              </div>
            </form>
          </div>
        </div>

	<form id="reivewListForm" name="reviewListForm" method="post">
             <div class="media mb-4" >
	          <div class="media-body" id="reviewList">
	           
				<%-- <form action="deleteReview.do" method="post">
				<input type="hidden" id="rno" name="rno" value="rno">
				<button type="submit" class="btn btn-primary">Delete</button>
	          	</form> --%> 
          </div>
        </div>
	</form>
		 
  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
<script>
function fn_review(code){
	
	$.ajax({
		type :'POST'
		, url : "<c:url value='/board/addReview.do'/>"
		, data : $('#reviewForm').serialize()
		, success : function(data) {
			if(data=="success"){
				getReviewList();
				$("#comment").val("");
			}
		}
		, error : function(request, status, error) {
			
		}
	});
}

/* ?????? ????????? ????????? ??? ???????????? */
$(function start(){
    
	getReviewList();
    
});

/* ?????? ???????????? */
function getReviewList(){
	
	$.ajax({
		type :'GET'
		, url : "<c:url value='/board/reviewList.do'/>"
		, datatype : "json"
		, data : $('#reviewForm').serialize()
		, contentType : "application/x-www-form-urlencoded; charset=UTF-8"
		, success : function(data) {
			
			var html = "";
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].name+"</strong></h6>";
                    html += data[i].comment + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>????????? ????????? ????????????.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#reviewList").html(html);
            
        	
			
		}, error : function(request, status, error) {
			
		}
	});
}
</script>


</div>
  <!-- /.container -->



</body>

</html>
