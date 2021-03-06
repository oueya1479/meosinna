<%@page import="kosta.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>MEOSINNA ADMIN - ORDERS</title>
	<link rel="icon" href="img/bannerLogo.png" type="image/png">
  <link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->
	<%@ include file="header.jsp" %>
	
	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>관리자 페이지</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
	
		<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          
          <div class="sidebar-filter">
            <div class="top-filter-head">Admin</div>
            <div class="common-filter">
              <div class="head">회원관리</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="myInfo"><a href="${pageContext.request.contextPath}/front?key=member&methodName=selectPrivate">회원목록</a></li>
                </ul>
              </form>
            </div>
            <div class="common-filter">
              <div class="head">주문관리</div>
              <form action="personalInfo.jsp">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="myInfo"><a href="viewAllOrders.jsp">전체주문조회</a></li>
                </ul>
              </form>
            </div>
           
          </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
        
          <!-- End Filter Bar -->
        
	<!--================ End Header Menu Area =================-->
	 <div class="private_order_details_table">
        <h2>전체주문조회</h2>
        <div class="table-responsive">
          <table class="table">
            <thead>
              <tr>
                <th scope="col">주문코드</th>
                <th scope="col">주문자 이름</th>
                <th scope="col">주문금액</th>
                <th scope="col">주문상태</th>
                <th scope="col">상품코드</th>
                <th scope="col">회원코드</th>
              </tr>
            </thead>
            <tbody>
             <c:forEach items="${requestScope.orderList}" var="order"> 
              <tr>
                <td><c:out value="${order.odCode}"/></td>
                <td><c:out value="${order.mbName}"/></td>
                <td><c:out value="${order.pay}"/></td>
                <td><a href="front?key=order&methodName=viewOrderDetail&gdCode=${order.gdCode}&odCode=${order.odCode}"><c:out value="${order.state}"/></a></td>
                <td><c:out value="${order.gdCode}"/></td>
                <td><c:out value="${order.mbCode}"/></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
	</div>
      </div>
    </div>
  </section>
 <!--================ Start footer Area  =================-->	
	<%@ include file="footer.jsp" %>
	<!--================ End footer Area  =================-->



  <script src="vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="vendors/skrollr.min.js"></script>
  <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="vendors/jquery.ajaxchimp.min.js"></script>
  <script src="vendors/mail-script.js"></script>
  <script src="js/main.js"></script>
</body>
</html>