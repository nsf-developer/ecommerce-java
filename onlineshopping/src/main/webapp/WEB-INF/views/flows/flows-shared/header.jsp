<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - Membership</title>

<script>

	window.contextRoot = '${contextRoot}'
	
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div class="se-pre-con"></div>
	<div class="wrapper">

	    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	        <div class="container">
	            <!-- Brand and toggle get grouped for better mobile display -->
	            <div class="navbar-header">
	                <a class="navbar-brand" href="${flowExecutionUrl}&_eventId=home">Online Shopping</a>
	            </div>
			</div>
		</nav>
		
		<div class="content"> --%>
			
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
					<a href="${contextRoot}/home" class="logo"> <!-- Logo White Version -->
						<img class="logo-white" src="${images}/logo.svg" alt=""> <!-- Logo Dark Version -->
						<img class="logo-dark" src="${images}/logo-dark.svg" alt="">
					</a>
				</div>
				<p class="nav-text"></p>

				<!-- left menu items -->
				<div class="top-nav left-menu"></div>

				<!-- logo -->
				<ul class="logo-menu">
					<a href="${contextRoot}/home" class="logo"> <!-- Logo White Version -->
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
		
		
		