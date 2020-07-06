<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


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

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Slider -->
<link href="${css}/swiper.min.css" rel="stylesheet" />


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

	<div class="container">

		<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-6">

				<div class="row">
					<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
						<div class="col-xs-12">


							<h4 style="background-color: #dd442c; padding: 10px;">${cartLine.product.name}</h4>
							<div class="col-xs-8">
								<h5>Quantity - ${cartLine.productCount}</h5>
								<h5>Buying Price - LKR ${cartLine.buyingPrice}.00/-</h5>
							</div>
							<div class="text-left col-xs-4" style="margin-bottom: 50px;">
								<h5>
									Grand Total<br> LKR ${cartLine.total}.00/-
								</h5>
							</div>

						</div>
					</c:forEach>
				</div>


			</div>

			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Payment Details</h3>
					</div>
					<div class="panel-body">
						<form role="form">
							<div class="form-group">
								<label for="cardNumber"> CARD NUMBER</label>
								<div class="input-group">
									<input type="text" class="form-control" id="cardNumber"
										placeholder="Valid Card Number" required autofocus /> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-7 col-md-7">
									<div class="form-group">
										<label for="expityMonth">EXPIRY DATE</label> <br />
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityMonth"
												placeholder="MM" required />
										</div>
										<div class="col-xs-6 col-lg-6 pl-ziro">
											<input type="text" class="form-control" id="expityYear"
												placeholder="YY" required />
										</div>
									</div>
								</div>
								<div class="col-xs-5 col-md-5 pull-right">
									<div class="form-group">
										<label for="cvCode"> CV CODE</label> <input type="password"
											class="form-control" id="cvCode" placeholder="CV" required />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><span
							class="badge pull-right" style="padding:5px;"> LKR
								${checkoutModel.checkoutTotal}.00/-</span> Final Payment</a></li>
				</ul>
				<br /> <a href="${flowExecutionUrl}&_eventId_pay"
					class="btn btn-success btn-lg btn-block" role="button">Pay</a>

			</div>

		</div>
	</div>

	<footer>
		<div
			style="text-align: center; background-color: #e6e6e6; padding-top: 10px; padding-bottom: 0px; position: fixed; bottom: 0; width: 100%;">
			<p>Copyright 2020 Mhd Naseef</p>
		</div>

	</footer>


	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<script src="${js}/jquery.validate.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>

	<!-- DataTable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap.js"></script>

	<!-- DataTable Bootstrap Script -->
	<script src="${js}/bootbox.min.js"></script>

	<!-- Self coded javascript -->
	<script src="${js}/myapp.js"></script>


	<%-- <script src="${js}/catelogSlider.js"></script> --%>
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






























<%-- <%@include file="../../flows-shared/header.jsp" %>
<div class="container">

	<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-6">
				
				<div class="row">
					<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
					<div class="col-xs-12">
						
						<div>
							<h3>${cartLine.product.name}</h3>
							<hr/>
							<h4>Quantity -${cartLine.productCount}</h4>
							<h5>Buying Price - &#8377; ${cartLine.buyingPrice}/-</h5>							
						</div>						
						<hr/>
						<div class="text-right">
							<h3>Grand Total - &#8377; ${cartLine.total}/-</h3>
						</div>						
					</div>
					</c:forEach>
				</div>
				
				
			</div>
			
			<div class="col-md-6">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <h3 class="panel-title">
	                        Payment Details
	                    </h3>
	                </div>
	                <div class="panel-body">
	                    <form role="form">
	                    <div class="form-group">
	                        <label for="cardNumber">
	                            CARD NUMBER</label>
	                        <div class="input-group">
	                            <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
	                                required autofocus />
	                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-xs-7 col-md-7">
	                            <div class="form-group">
	                                <label for="expityMonth">EXPIRY DATE</label>
	                                <br/>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <input type="text" class="form-control" id="expityMonth" placeholder="MM" required />
	                                </div>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <input type="text" class="form-control" id="expityYear" placeholder="YY" required /></div>
	                            </div>
	                        </div>
	                        <div class="col-xs-5 col-md-5 pull-right">
	                            <div class="form-group">
	                                <label for="cvCode">
	                                    CV CODE</label>
	                                <input type="password" class="form-control" id="cvCode" placeholder="CV" required />
	                            </div>
	                        </div>
	                    </div>
	                    </form>
	                </div>
	            </div>
	            <ul class="nav nav-pills nav-stacked">
	                <li class="active"><a href="#"><span class="badge pull-right"> &#8377; ${checkoutModel.checkoutTotal}/-</span> Final Payment</a></li>
	            </ul>
	            <br/>
	            <a href="${flowExecutionUrl}&_eventId_pay" class="btn btn-success btn-lg btn-block" role="button">Pay</a>
			
			</div>

	</div>
</div>
<%@include file="../../flows-shared/footer.jsp" %> --%>