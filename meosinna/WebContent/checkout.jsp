<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Aroma Shop - Checkout</title>
<link rel="icon" href="img/Fevicon.png" type="image/png">

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
<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<script>
	$(function() {
		
		$("#shipping-select").on("change", function() {
			let selected = $("#shipping-select option:selected").val();
			if(selected === "1") {
				$("#rname").val($("#sname").val());
				$("#rtel").val($("#stel").val());
				$("#address").val("${sessionScope.member.addr}");
			} else if (selected === "2") {
				$("#rname").val("");
				$("#rtel").val("");
				$("#address").val("");
			}
		});
		
			$("#payment").on("click", function() {
				/*let formValues = $("[input=text]").val();
				console.log(formValues);
				if(formValues="") {
					alert("필수 입력사항을 입력 후 다시 진행해 주세요 :)");
				}*/
				var state = true;
				$("input[type=text]").each(function(index, element) {
					$(this).css("border-color","#eeeeee").css("background","transparent");
					
					if($(this).val() == "") {
						alert("필수 입력사항을 모두 기재해주세요 :)");
						$(this).focus();
						$(this).css("border-color","red");
						state = false;
						return false;
					}
				});
				
			})
	});
</script>
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					<a class="navbar-brand logo_h" href="index.html"><img
						src="img/logo3.png" alt="" width="100px"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
							<li class="nav-item active submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link"
										href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link"
										href="single-product.html">Product Details</a></li>
									<li class="nav-item"><a class="nav-link"
										href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link"
										href="confirmation.html">Confirmation</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping
											Cart</a></li>
								</ul></li>
							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link"
										href="single-blog.html">Blog Details</a></li>
								</ul></li>
							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
									<li class="nav-item"><a class="nav-link"
										href="register.html">Register</a></li>
									<li class="nav-item"><a class="nav-link"
										href="tracking-order.html">Tracking</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
						</ul>

						<ul class="nav-shop">
							<li class="nav-item"><button>
									<i class="ti-search"></i>
								</button></li>
							<li class="nav-item"><button>
									<i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span>
								</button></li>
							<li class="nav-item"><a class="button button-header"
								href="#">Buy Now</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Product Checkout</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Checkout</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ end banner area ================= -->


	<!--================Checkout Area =================-->
	<section class="checkout_area section-margin--small">
		<div class="container">
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-8">
						<h3>주문자 정보</h3>
						<form class="row contact_form" action="#" method="post"
							novalidate="novalidate">
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="sname" name="sname"
									placeholder="Name" value="${sessionScope.member.mbName}"> <span class="placeholder"
									data-placeholder="Name"></span>
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="stel" name="stel"
									placeholder="Tel" value="${sessionScope.member.tel}"> <span class="placeholder"
									data-placeholder="Tel"></span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="email" name="email"
									placeholder="Email" value="${sessionScope.member.email}"> 
							</div>
							<div class="col-md-12 form-group mb-0">
								<div class="creat_account">
									<h3>배송지 정보</h3>
								</div>
							</div>
							<div class="col-md-3 form-group p_star">
								<select class="shipping-select" id="shipping-select">
									<option value="1">주문자와 동일</option>
									<option value="2">새로운 배송지</option>
									<option value="3">최근 배송지</option>
								</select>
							</div>
							<div class="col-md-9 form-group p_star">
								<input class="form-control" style="display: none;">
								<span class="placeholder" data-placeholder="Address"></span>
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="rname" name="rname"
									placeholder="Name"> <span class="placeholder"
									data-placeholder="Phone number"></span>
							</div>
							<div class="col-md-6 form-group p_star">
								<input type="text" class="form-control" id="rtel" name="rtel"
									placeholder="Tel"> <span class="placeholder"
									data-placeholder="Tel"></span>
							</div>
							<div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="address" name="address"
									placeholder="Address"> <span class="placeholder"
									data-placeholder="Address"></span>
							</div>
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="zip" name="zip"
									placeholder="Postcode/ZIP">
							</div>
							<div class="col-md-12 form-group mb-0">
								<div class="creat_account">
									<h3>Shipping Details</h3>
								</div>
								<textarea class="form-control" name="message" id="message"
									rows="1" placeholder="Order Notes"></textarea>
							</div>
						</form>
					</div>
					<div class="col-lg-4">
						<div class="order_box">
							<h2>Your Order</h2>
							<ul class="list">
								<li><a href="#"><h4>
											Product <span>Price</span>
										</h4></a></li>
										<c:set var = "total" value = "0" />
										<table>
											<c:forEach items="${requestScope.goodsList}" var="cart">
												<tr>
													<td style="width: 200px">${cart.name} x ${cart.qty}</td>
													<td style="padding:5px"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;₩${cart.price}</b></td>
													<c:set var= "total" value="${total + cart.price}"/>
												</tr>
											</c:forEach>
										</table>
								
							</ul>
							<ul class="list list_2">
								<li><a href="#">Total <span>₩<c:out value="${total}"/></span></a></li>
							</ul>
							<div class="payment_item">
								<div class="radion_btn">
									<input type="radio" id="f-option5" name="selector"> <label
										for="f-option5">Check payments</label>
									<div class="check"></div>
								</div>
								<p>Please send a check to Store Name, Store Street, Store
									Town, Store State / County, Store Postcode.</p>
							</div>
							<div class="payment_item active">
								<div class="radion_btn">
									<input type="radio" id="f-option6" name="selector"> <label
										for="f-option6">Paypal </label> <img
										src="img/product/card.jpg" alt="">
									<div class="check"></div>
								</div>
								<p>Pay via PayPal; you can pay with your credit card if you
									don’t have a PayPal account.</p>
							</div>
							<div class="creat_account">
								<input type="checkbox" id="f-option4" name="selector"> <label
									for="f-option4">I’ve read and accept the </label> <a href="#">terms
									& conditions*</a>
							</div>
							<div class="text-center">
								<a class="button button-paypal" href="front?key=order&methodName=order" id="payment">결제하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Checkout Area =================-->



	<!--================ Start footer Area  =================-->
	<footer>
		<div class="footer-area footer-only">
			<div class="container">
				<div class="row section_gap">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets ">
							<h4 class="footer_title large_title">Our Mission</h4>
							<p>So seed seed green that winged cattle in. Gathering thing
								made fly you're no divided deep moved us lan Gathering thing us
								land years living.</p>
							<p>So seed seed green that winged cattle in. Gathering thing
								made fly you're no divided deep moved</p>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Quick Links</h4>
							<ul class="list">
								<li><a href="#">Home</a></li>
								<li><a href="#">Shop</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Product</a></li>
								<li><a href="#">Brand</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget instafeed">
							<h4 class="footer_title">Gallery</h4>
							<ul class="list instafeed d-flex flex-wrap">
								<li><img src="img/gallery/r1.jpg" alt=""></li>
								<li><img src="img/gallery/r2.jpg" alt=""></li>
								<li><img src="img/gallery/r3.jpg" alt=""></li>
								<li><img src="img/gallery/r5.jpg" alt=""></li>
								<li><img src="img/gallery/r7.jpg" alt=""></li>
								<li><img src="img/gallery/r8.jpg" alt=""></li>
							</ul>
						</div>
					</div>
					<div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
						<div class="single-footer-widget tp_widgets">
							<h4 class="footer_title">Contact Us</h4>
							<div class="ml-40">
								<p class="sm-head">
									<span class="fa fa-location-arrow"></span> Head Office
								</p>
								<p>123, Main Street, Your City</p>

								<p class="sm-head">
									<span class="fa fa-phone"></span> Phone Number
								</p>
								<p>
									+123 456 7890 <br> +123 456 7890
								</p>

								<p class="sm-head">
									<span class="fa fa-envelope"></span> Email
								</p>
								<p>
									free@infoexample.com <br> www.infoexample.com
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row d-flex">
					<p class="col-lg-12 footer-text text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="fa fa-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
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