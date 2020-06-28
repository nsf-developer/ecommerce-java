<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	
	

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="owl" value="/resources/owl-carousel" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="MHD NAseef">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">

<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>

<script>
	window.userRole = '${userModel.role}';
</script>

<LINK REL=StyleSheet HREF="${css}/style.css" TYPE="text/css" MEDIA=screen>

<link rel="stylesheet" href="${css}/components.css">
<link rel="stylesheet" href="${css}/icons.css">
<link rel="stylesheet" href="${css}/responsee.css">
<link rel="stylesheet" href="${owl}/owl.carousel.css">

<!-- Slider -->
<link href="${css}/swiper.min.css" rel="stylesheet">


<link rel="stylesheet" href="${css}/style.css">
<!-- CUSTOM STYLE -->
<link rel="stylesheet" href="${css}/template-style.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,700,900&amp;subset=latin-ext"
	rel="stylesheet">
<script type="text/javascript" src="${js}/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${js}/jquery-ui.min.js"></script>

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>




</head>

<body class="size-1280">

	<div ng-app="ShoppingApp" ng-controller="ProductController as pCtrl">
		<div class="row" ng-init="pCtrl.fetchProducts()">


			<!-- Navbar -->
			<!-- PREMIUM FEATURES BUTTON -->
			<a target="_blank" class="hide-s"
				href="../template/virtua-premium-responsive-business-template/"
				style="position: fixed; top: 120px; right: -14px; z-index: 10;"><img
				src="img/premium-features.png" alt=""></a>
			<!-- HEADER -->
			<header role="banner" class="position-absolute">
				<!-- Top Navigation -->
				<nav
					class="background-transparent background-primary-dott full-width sticky">
					<div class="top-nav">
					
						<!-- mobile version logo -->
						<div class="logo hide-l hide-xl hide-xxl">
							<a href="index.html" class="logo"> <!-- Logo White Version -->
								<img class="logo-white" src="${images}/logo.svg" alt=""> <!-- Logo Dark Version -->
								<img class="logo-dark" src="${images}/logo-dark.svg" alt="">
							</a>
						</div>
						<p class="nav-text"></p>

						<!-- left menu items -->
						<div class="top-nav left-menu">
							<ul class="right top-ul chevron">
								<li><a href="${contextRoot}/home">Home</a></li>
								<li id="about"><a href="${contextRoot}/aboutl">About Us</a></li>
								<li id="contact"><a href="${contextRoot}/contact">Contact Us</a></li>
							</ul>
						</div>

						<!-- logo -->
						<ul class="logo-menu">
							<a href="index.html" class="logo"> <!-- Logo White Version -->
								<img class="logo-white" src="${images}/logo.svg" alt=""> <!-- Logo Dark Version -->
								<img class="logo-dark" src="${images}/logo-dark.svg" alt="">
							</a>
						</ul>

						<!-- right menu items -->
						<div class="top-nav right-menu">
							<ul class="top-ul chevron">
								<!-- <li><a>Products</a>
									<ul>
										<li><a>Product 1</a></li>
										<li><a>Product 2</a></li>
									</ul></li> -->
								<li id="listProducts"><a href="${contextRoot}/show/all/products">Products</a></li>
								<security:authorize access="hasAuthority('ADMIN')">
								<li id="manageProduct"><a href="${contextRoot}/manage/product">Manage</a></li>					
								</security:authorize>
								<security:authorize access="isAnonymous()">
									<li id="signup"><a href="${contextRoot}/membership">Sign
											Up</a></li>
									<li id="login"><a href="${contextRoot}/login">Login</a></li>
								</security:authorize>
								
								<security:authorize access="isAuthenticated()">
									<li class="dropdown" id="userModel"><a
										class="btn btn-default dropdown-toggle"
										href="javascript:void(0)" id="dropdownMenu1"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="true"> ${userModel.fullName} <span
											class="caret"></span>
									</a>
										<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
											<security:authorize access="hasAuthority('USER')">
												<li id="cart"><a href="${contextRoot}/cart/show"> <span
														class="icon-sli-basket text-primary text-size-20"></span>&#160;<span
														class="badge">${userModel.cart.cartLines}</span> - &#8377;
														${userModel.cart.grandTotal}
												</a></li>
												<li role="separator" class="divider"></li>
											</security:authorize>
											<li id="logout"><a href="${contextRoot}/logout">Logout</a>
											</li>
										</ul></li>
								</security:authorize>

							</ul>
						</div>
					</div>
				</nav>
			</header>

			<!-- MAIN -->


			<header class="section-top-padding background-image text-center"
				style="background-image:url(${images}/img-05.jpg)">
				<h1
					class="text-extra-thin text-white text-s-size-30 text-m-size-40 text-size-50 text-line-height-1 margin-bottom-40 margin-top-130">
					Save your Time and Keep Calm</h1>
				<p class="text-white">
					Duis autem vel eum iriure dolor in hendrerit in vulputate velit<br>
					esse molestie consequat, vel illum dolore eu feugiat nulla
					facilisis
				</p>
				<i
					class="slow icon-sli-arrow-down text-white margin-top-20 text-size-16"></i>
				<!-- Image -->
				<img class="margin-top-20 center" src="${images}/lipstick.png"
					alt="">

				<!-- dark full width arrow object -->
				<img class="arrow-object" src="${images}/arrow-object-dark.svg"
					alt="">
			</header>

			<!-- Section 1 -->
			<section class="section-small-padding background-dark text-center">
				<div class="line">
					<div class="m-10 l-6 xl-4 center">
						<div class="margin">
							<a class="s-12 m-6 margin-s-bottom" href="/"> <img
								class="full-img right" src="${images}/google-play.svg" alt="">
							</a> <a class="s-12 m-6" href="/"> <img class="full-img"
								src="${images}/app-store.svg" alt="">
							</a>
						</div>
					</div>
				</div>
			</section>

			<!-- Section 2 -->
			<section class="section-top-padding background-white">
				<div class="line text-center">
					<i class="icon-sli-heart text-primary text-size-40"></i>
					<h2 class="text-dark text-size-50 text-m-size-40">
						Online <b>Catalogue</b>
					</h2>
					<p class="text-dark text-size-15 text-m-size-12 ">April - June</p>
					<hr
						class="break background-primary break-small break-center margin-bottom-20r">
				</div>






				<!-- Catalogue Slider -->
				<div class="swiper-container col-md-12">
					<div class="swiper-wrapper">



						<!-- <div class="swiper-slide box" >
					
						<div class="card" >
							<div id="catalogueImg"></div>
						</div>
					
				</div> -->


						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_01.jpg" alt="" />
							</div>
						</div>


						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_02.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_03.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_04.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_05.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_06.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_07.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_08.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_09.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_10.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_11.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_12.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_13.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_14.jpg" />
							</div>
						</div>

						<div class="swiper-slide">
							<div class="card">
								<img src="${images}/2020002_Page_15.jpg" />
							</div>
						</div>



					</div>
				</div>


				<!-- Section 3 -->
				<section class="section-small-padding background-white">
					<div class="line text-center">
						<p class="text-primary text-size-20">Lorem ipsum dolor sit
							amet</p>
						<h2 class="text-dark text-size-50 text-m-size-40">
							Responsive <b>Components</b>
						</h2>
						<i
							class="icon-chevron_down text-primary margin-bottom-50 text-size-20"></i>
					</div>

					
					<div class="line">

						<div class="margin2x">
							<div class="m-12 l-3 margin-bottom-30"
								ng-repeat="product in pCtrl.mvProducts">
							<div class="single-package-item">	
								
									<img ng-src="${images}/{{product.code}}.jpg"
										alt="{{product.name}}" class="landingImg">
								<div class="single-package-item-txt">	
									<h3>{{product.name}}</h3>
															
									<div >
										<h4  class="text-blue">&#8377; {{product.unitPrice}}</h4>
										<p>{{product.description}}</p>
										<%-- <a ng-href="${contextRoot}/show/{{product.id}}/product"
											class="btn btn-primary pull-right">View</a> --%>
										
										<div>		
											<div class="about-btn">
											<!-- <button  class="about-view packages-btn submit-button" onclick="location.href = 'http://localhost:8080/onlineshopping/show/104/product';">
												book now
											</button> -->
											<a ng-href="${contextRoot}/show/{{product.id}}/product"
											class="about-view packages-btn text-white">book now</a>
											</div>
										</div>
									</div>
								</div>
								</div>

							</div>
						</div>

					</div>

				</section>
				<%-- <div class="col-sm-4 col-lg-4 col-md-4">
							<h4>Checkout more products!</h4>
							<hr />
							<a class="btn btn-primary"
								href="${contextRoot}/show/all/products">More Products</a>
						</div> --%>



				<!-- Section 3 -->
				<section class="section background-white">
					<div class="line text-center">
						<p class="text-primary text-size-20">Lorem ipsum dolor sit
							amet</p>
						<h2 class="text-dark text-size-50 text-m-size-40">
							Responsive <b>Components</b>
						</h2>
						<i
							class="icon-chevron_down text-primary margin-bottom-50 text-size-20"></i>
					</div>


					<div class="margin2x">
						<div class="s-12 m-3 margin-bottom-30"
							ng-repeat="product in pCtrl.mpProducts">
							<div class="thumbnail">
								<img ng-src="${images}/{{product.code}}.jpg"
									alt="{{product.name}}" class="landingImg">
								<h5>{{product.name}}</h5>
								<hr />
								<div class="caption">
									<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
									<p>{{product.description}}</p>
									<a ng-href="${contextRoot}/show/{{product.id}}/product"
										class="btn btn-primary pull-right">View</a>
								</div>
							</div>
						</div>
					</div>

				</section>
				<%-- <div class="col-sm-4 col-lg-4 col-md-4">
							<h4>Checkout more products!</h4>
							<hr />
							<a class="btn btn-primary"
								href="${contextRoot}/show/all/products">More Products</a>
						</div> --%>
		</div>
	</div>
	</div>

	</div>
	<!-- /.container -->





	<script type="text/javascript" src="${js}/responsee.js"></script>
	<script type="text/javascript" src="${owl}/owl.carousel.js"></script>
	<script type="text/javascript" src="${js}/template-scripts.js"></script>


	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- DataTable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap.js"></script>

	<script src="${js}/swiper.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			effect : 'coverflow',
			grabCursor : true,
			centeredSlides : true,
			slidesPerView : 'auto',
			coverflowEffect : {
				rotate : 30,
				stretch : 0,
				depth : 200,
				modifier : 1,
				slideShadows : true,
			},
			pagination : {
				el : '.swiper-pagination',
			},
		});
	</script>


	</div>

</body>

</html>