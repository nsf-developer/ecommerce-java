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
			class="background-transparent background-primary-dott full-width ">
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
				<div class="top-nav left-menu"></div>

				<!-- logo -->
				<ul class="logo-menu">
					<a href="index.html" class="logo"> <!-- Logo White Version -->
						<img class="logo-white" src="${images}/logo.svg" alt=""> <!-- Logo Dark Version -->
						<img class="logo-dark" src="${images}/logo-dark.svg" alt="">
					</a>
				</ul>

				<!-- right menu items -->
				<div class="top-nav right-menu"></div>
			</div>
		</nav>
	</header>

	<!-- Nav end -->






	<!-- MAIN -->
	<main role="main">
		<article>




			<!-- Section 3 -->
			<section class="section background-dark">
				<div class="s-12 m-12 l-4 center ">
					<div class="line">
						<hr
							class="break background-primary break-big break-center margin-bottom-20r">
					</div>

					<div class="line">
						<div class="s-12">
							<c:if test="${not empty message}">
								<div class="alert alert-danger fade in text-white border-radius margin-bottom-20" style="background-color: #dd442c; padding: 10px;">${message}</div>
							</c:if>
						</div>
					</div>


					<div class="line">
						<c:if test="${not empty logout}">
							
							<div class="s-12">
								<div class="alert alert-danger fade in text-white border-radius margin-bottom-20" style="background-color: green; padding: 10px;">${logout}</div>
							</div>
							
						</c:if>
					</div>

					<h3 class="text-size-30 margin-bottom-40 text-center">
						<b>Login</b>
					</h3>
					<form action="${contextRoot}/login" class="customform text-white"
						method="POST" id="loginForm" enctype="multipart/form-data">

						<div class="line">
							<div class="s-12 m-12 l-12">
								<!-- <label for="username" class="control-label margin-bottom-10">Email</label> -->
								<input name="username" id="username" class="required email margin-bottom-0" 
									placeholder="Your e-mail" title="Your e-mail" type="text" />
							</div>
							<div class="s-12">
								<!-- <label for="password" class="control-label margin-bottom-10">Password</label> -->
								<input name="password" id="password" class="required margin-bottom-0 margin-top-20"
									placeholder="Password" title="Your password" type="password" />
							</div>
							
							<div class="s-12">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<!-- 								<input type="submit" value="Login" class="button border-radius text-white background-primary" />
 -->
								<button
									class="button border-radius text-white background-primary margin-top-20"
									type="submit">Login</button>
							</div>

							<div class="s-12">
								<hr>
							</div>

							<div class="s-12">
								<p class="text-center margin-bottom-10">Don't have an
									account yet?</p>
							</div>

							<div class="s-12">
							<a href="http://localhost:8080/onlineshopping/membership"
								class="border-radius text-white margin-top-0 text-center" style="background-color: #dd442c; padding: 12px;">
								Sign Up</a>
							
								<!-- <button class="button border-radius text-white"
									style="background-color: #dd442c;" onclick="location.href = 'http://localhost:8080/onlineshopping/membership';">Sign Up</button> -->
									
									
							</div>
						</div>

						<div class="line">
							<hr
								class="break background-primary break-big break-center margin-bottom-20r">
						</div>

					</form>
				</div>
			</section>
		</article>
	</main>









	<!-- Footer comes here  -->
	<%@include file="./shared/footer.jsp"%>




	<script type="text/javascript" src="${js}/responsee.js"></script>
	<script type="text/javascript" src="${owl}/owl.carousel.js"></script>
	<script type="text/javascript" src="${js}/template-scripts.js"></script>


	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- DataTable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap.js"></script>
	
	
	<script src="${js}/jquery.validate.js"></script>
	<script src="${js}/myapp.js"></script>


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














<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>
</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Online
						Shopping</a>
				</div>
			</div>
		</nav>

		<!-- Page Content -->

		<div class="content">

			<div class="container">

				<c:if test="${not empty message}">
					<div class="row">
						<div class="col-xs-12 col-md-offset-2 col-md-8">
							<div class="alert alert-danger fade in">${message}</div>
						</div>
					</div>
				</c:if>

				<c:if test="${not empty logout}">
					<div class="row">
						<div class="col-xs-12 col-md-offset-2 col-md-8">
							<div class="alert alert-success">${logout}</div>
						</div>
					</div>
				</c:if>

				<div class="row">

					<div class="col-md-offset-3 col-md-6">

						<div class="panel panel-primary">

							<div class="panel-heading">
								<h4>Login</h4>
							</div>

							<div class="panel-body">
								<form action="${contextRoot}/login" method="POST"
									class="form-horizontal" id="loginForm">
									<div class="form-group">
										<label for="username" class="col-md-4 control-label">Email:
										</label>
										<div class="col-md-8">
											<input type="text" name="username" id="username"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label for="password" class="col-md-4 control-label">Password:
										</label>
										<div class="col-md-8">
											<input type="password" name="password" id="password"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-offset-4 col-md-8">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" /> <input type="submit" value="Login"
												class="btn btn-primary" />
										</div>
									</div>
								</form>

							</div>
							<div class="panel-footer">
								<div class="text-right">
									New User - <a href="${contextRoot}/membership">Sign Up</a>
								</div>
							</div>

						</div>

					</div>

				</div>

			</div>


		</div>


		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

		<!-- jQuery -->
		<script src="${js}/jquery.js"></script>

		<script src="${js}/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="${js}/bootstrap.min.js"></script>

		<!-- Self coded javascript -->
		<script src="${js}/myapp.js"></script>

	</div>

</body>

</html> --%>