<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="kosta.dao.MemberDAOImpl"%>
<%@page import="kosta.dao.MemberDAO"%>
<%@page import="kosta.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>MEOSINNA - MY Page</title>
<link rel="icon" href="img/bannerLogo.png" type="image/png">
<link rel="stylesheet" href="vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="vendors/linericon/style.css">
<link rel="stylesheet"
	href="vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="vendors/nouislider/nouislider.min.css">


<link rel="stylesheet" href="css/style.css">
<style type="text/css">
td {
	padding-top: 20px;
	padding-bottom: 20px;
}

th {
	padding-right: 100px;
	padding-top: 20px;
	padding-bottom: 20px;
}

.info {
	padding: 10px;
}

th.head {
	border-top: none;
	font-size: 2em;
}

svg {
	position: absolute;
	right: 10%;
	top: 10%;
}

svg:hover {
	fill: #f5543d;
}

.row{
flex-wrap: nowrap;

}

/* 
.x{
	fill: currentColor;
	width: 20px;
	height: 20px; 
	position: absolute;
	right: 15%;
}
 */
</style>
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<%@ include file="header.jsp"%>
	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>???????????????</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="personalInfo.jsp">${member.mbName}</a></li>
							<li class="breadcrumb-item active" aria-current="page">???
								???????????????.</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ end banner area ================= -->
<section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
      <div class="col-xl-3 col-lg-4 col-md-5">
<%@ include file="myPageMenuBar.jsp" %>
	<!-- ================ category section start ================= -->
	<section class="section-margin--small mb-3">
		<div class="container-fluid">

			<p class="text-center billing-alert">${sessionScope.member.mbName}??????
				????????? ?????? ????????? ?????? ???????????????.</p>
			<div class="row">

				<c:forEach items="${pqList}" var="pqList">
					<div class="col-6 m-3">
						<div class="confirmation-card">
							<!-- <img src="img/svg/x-square-fill.svg" alt="delete" class="x"> -->
							<%-- <a href="${pageContext.request.contextPath}/front?key=member&methodName=deletePq&odCode=${pqList.odCode}"> --%>
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
								fill="currentColor" class="bi bi-x-square-fill"
								viewBox="0 0 16 16" data-toggle="tooltip" title="???????????? ??????">
  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm3.354 4.646L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 1 1 .708-.708z"/>
</svg><!-- </a> -->
							<table class="table table-hover">
								<tr>
									<th scope="col" class="head"><span># </span><span>${pqList.odCode}</span></th>
								</tr>

								<%-- <tr>
									<th scope="row">????????????</th>
								</tr>
								<tr>
									<td style="font-size: 0.83rem; font-weight: none; width: 60%">????????????</td>
									<td style="font-size: 0.83rem; font-weight: none; width: 5%">??????</td>
									<td style="font-size: 0.83rem; font-weight: none; width: 35%">??????</td>
								</tr>
								<tr>
									<td style="font-size: 0.83rem; font-weight: none; width: 60%">${requestScope.odList.gdName}</td>
									<td style="font-size: 0.83rem; font-weight: none; width: 5%">${requestScope.odList.qty}</td>
									<td style="font-size: 0.83rem; font-weight: none; width: 35%"><fmt:formatNumber
											value="${requestScope.odList.pay}" />???</td>
								</tr>
								<tr>
									<th scope="row">?????????</th>
									<td colspan="3" style="width: 60%;">${requestScope.odList.odDate}</td>
								</tr>

 --%>

								<tr>
									<th scope="row">????????????</th>
									<td style="width: 70%;">${pqList.type}</td>
								</tr>
								<tr>
									<th scope="row">????????????</th>
									<td style="width: 70%;">${pqList.title}</td>
								</tr>
								<tr>
									<th scope="row">????????????</th>
									<td style="width: 70%;">${pqList.content}</td>
								</tr>
								<tr>
									<th scope="row">????????????</th>
									<td style="width: 70%;">${pqList.pqDate}</td>
								</tr>
								<tr>
									<th scope="row">????????????</th>
									<td colspan="3" style="width: 70%;">${pqList.state}</td>
								</tr>
							</table>
						</div>

						<!-- ?????? ??? -->
					</div>
				</c:forEach>

			</div>
		</div>

	</section>
	<!-- ================ category section end ================= -->

 </div>
      </div>
    </div>
  </section>


	<!--================ End footer Area  =================-->



	<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="vendors/skrollr.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="vendors/nouislider/nouislider.min.js"></script>
	<script src="vendors/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/mail-script.js"></script>
	<script src="js/main.js"></script>
	<script>
		$(document).ready(function() {

			/*
			1. tooltip ??????
			 */
			$('[data-toggle="tooltip"]').tooltip();

			/*
			2. ???????????? ????????????
			 */

			$("path").click(function() {
				
				var code = $(this).parent().siblings("table").children().children(":nth-child(1)").children().children(":nth-child(2)").text();
			
				
				if(confirm("?????? ?????? ????????? ?????????????????????????\n????????? ?????? ????????? ???????????? ????????????.")){
					
					location.href = "${pageContext.request.contextPath}/front?key=member&methodName=deletePq&odCode="+code;
				
				}
			
			
			});

		});
	</script>
</body>
</html>