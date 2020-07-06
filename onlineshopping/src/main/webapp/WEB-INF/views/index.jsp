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

<LINK REL=StyleSheet HREF="${css}/style.css" TYPE="text/css"
	MEDIA=screen>

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

			<!-- Navigation bar -->
		<%@include file="./shared/nav.jsp"%>
		
		
		<!-- Loading the home content -->
			<c:if test="${userClickHome == true }">
				<%@include file="home.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks about -->
			<c:if test="${userClickAbout == true }">
				<%@include file="about.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks contact -->
			<c:if test="${userClickContact == true }">
				<%@include file="contact.jsp"%>
			</c:if>
			
			<!-- Load only when user clicks contact -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true }">
				<%@include file="listProducts.jsp"%>
			</c:if>

			<%-- <!-- Navbar -->
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
								<li id="about"><a href="${contextRoot}/about">About Us</a></li>
								<li id="contact"><a href="${contextRoot}/contact">Contact
										Us</a></li>
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
								<li id="listProducts"><a
									href="${contextRoot}/show/all/products">Products</a></li>
								<security:authorize access="hasAuthority('ADMIN')">
									<li id="manageProduct"><a
										href="${contextRoot}/manage/product">Manage</a></li>
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
			</header> --%>

			<!-- MAIN -->


			
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

	<!-- Footer comes here  -->
		<%@include file="./shared/footer.jsp"%>




		<script type="text/javascript" src="${js}/responsee.js"></script>
		<script type="text/javascript" src="${owl}/owl.carousel.js"></script>
		<script type="text/javascript" src="${js}/template-scripts.js"></script>


		<!-- DataTable Plugin -->
		<script src="${js}/jquery.dataTables.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="${js}/dataTables.bootstrap.js"></script>

		<script src="${js}/swiper.min.js"></script>
		
		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>

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