<%@page import="kosta.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>MEOSINNA - Login</title>
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

</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<%@ include file="header.jsp" %>
	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Login / Register</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Login/Register</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ end banner area ================= -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>We create values, we care our customers.</p>
							<p style="font-size: 1.25em">WE ARE MEOSINNA</p>
							<a class="button button-account" href="register.jsp">Create
								an Account</a>
						</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${empty member}">
						<div class="col-lg-6">
							<div class="login_form_inner">
								<h3>Log in to enter</h3>
								<form class="row login_form"
									action="${pageContext.request.contextPath}/front"
									id="contactForm" method="post">
									<input type="hidden" name="key" value="member" /> <input
										type="hidden" name="methodName" value="login" />
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" id="userId"
											name="userId" placeholder="UserId"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'UserId'">
									</div>
									<div class="col-md-12 form-group">
										<input type="password" class="form-control" id="pwd"
											name="pwd" placeholder="Password"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Password'">
									</div>
									<div class="col-md-12 form-group">
										<div class="creat_account">
										</div>
									</div>
									<div class="col-md-12 form-group">
										<button type="submit" value="submit"
											class="button button-login w-100">Log In</button>
									</div>
								</form>
							</div>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>

	</section>
	<!--================End Login Box Area =================-->



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