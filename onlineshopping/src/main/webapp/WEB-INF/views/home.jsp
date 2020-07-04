<%-- <!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>
<div ng-app="ShoppingApp" ng-controller="ProductController as pCtrl">

	<div class="row" ng-init="pCtrl.fetchProducts()">

	


<div class="container">

		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		
			<div class="col-md-9">

				<div class="row carousel-holder">

				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner">
							
							<div class="item active">
								<img class="slide-image" src="${images}/banner1.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/banner2.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/banner3.jpg"
									alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/banner4.jpg"
									alt="">
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>

			</div>
	</div>
</div>




		<!-- Catalogue Slider -->
		<div class="swiper-container col-md-12">
			<div class="swiper-wrapper" >

			
			
				<!-- <div class="swiper-slide box" >
					
						<div class="card" >
							<div id="catalogueImg"></div>
						</div>
					
				</div> -->
			

				<div class="swiper-slide">
					<div class="card">
						<img src="${images}/2020002_Page_01.jpg" alt=""/>
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


		<div class="container">

				<div class="row">
					<div class="col-xs-12">
						<h3>Our Most Viewed Products</h3>
						<hr />
					</div>
				</div>

				<div class="row is-table-row">

					<div class="col-sm-3" ng-repeat="product in pCtrl.mvProducts">
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

					<div class="col-sm-4 col-lg-4 col-md-4">
						<h4>Checkout more products!</h4>
						<hr />
						<a class="btn btn-primary" href="${contextRoot}/show/all/products">More
							Products</a>
					</div>

				</div>

				<div class="row">
					<div class="col-xs-12">
						<h3>Our Most Purchased Products</h3>
						<hr />
					</div>
				</div>
				<div class="row is-table-row">

					<div class="col-sm-3" ng-repeat="product in pCtrl.mpProducts">
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

					<div class="col-sm-4 col-lg-4 col-md-4">
						<h4>Checkout more products!</h4>
						<hr />
						<a class="btn btn-primary" href="${contextRoot}/show/all/products">More
							Products</a>
					</div>

				</div>

			</div>
		

	</div>

</div>
<!-- /.container -->
 --%>
 
 <header class="section-top-padding background-image text-center"
				style="background-image:url(${images}/img-05.jpg)">
				<h1
					class="text-extra-thin text-white text-s-size-25 text-m-size-35 text-size-40 text-line-height-1 margin-bottom-40 margin-top-130">
					Save your Time by Online Purchase</h1>
				<p class="text-white">
					However way you look at it,<br> online shopping is more time
					saving than traditional shopping
				</p>
				<i
					class="slow icon-sli-arrow-down text-white margin-top-20 text-size-16"></i>
				<!-- Image -->
				<img class="margin-top-20 center" src="${images}/novage2.png"
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
						<p class="text-primary text-size-20">Our personal offer price</p>
						<h2 class="text-dark text-size-50 text-m-size-40">
							Most viewed <b>Products</b>
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
										<!-- <a class="text-extra-thin text-white text-s-size-20 text-m-size-20 text-size-20 text-line-height-1 margin-bottom-40 margin-top-130"></a> -->
										<h3>{{product.name}}</h3>

										<div>
											<h4 class="text-blue">&#8377; {{product.unitPrice}}</h4>
											<p class="text-line-height-1">{{product.description}}</p>
											<%-- <a ng-href="${contextRoot}/show/{{product.id}}/product"
											class="btn btn-primary pull-right">View</a> --%>

											<div>
												<div class="about-btn">
													<!-- <button  class="about-view packages-btn submit-button" onclick="location.href = 'http://localhost:8080/onlineshopping/show/104/product';">
												book now
											</button> -->
													<a ng-href="${contextRoot}/show/{{product.id}}/product"
														class="about-view packages-btn text-white">View</a>
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
				<section class="section-small-padding background-white">
					<div class="line text-center">
						<p class="text-primary text-size-20">Our personal offer price</p>
						<h2 class="text-dark text-size-50 text-m-size-40">
							Most purchased <b>Products</b>
						</h2>
						<i
							class="icon-chevron_down text-primary margin-bottom-50 text-size-20"></i>
					</div>


					<div class="line">

						<div class="margin2x">
							<div class="m-12 l-3 margin-bottom-30"
								ng-repeat="product in pCtrl.mpProducts">
								<div class="single-package-item">
											<img ng-src="${images}/{{product.code}}.jpg"
												alt="{{product.name}}" class="landingImg">
									<div class="single-package-item-txt">
										<!-- <a class="text-extra-thin text-white text-s-size-20 text-m-size-20 text-size-20 text-line-height-1 margin-bottom-40 margin-top-130"></a> -->
										<h3>{{product.name}}</h3>

										<div>
											<h4 class="text-blue">&#8377; {{product.unitPrice}}</h4>
											<p class="text-line-height-1">{{product.description}}</p>
											<%-- <a ng-href="${contextRoot}/show/{{product.id}}/product"
											class="btn btn-primary pull-right">View</a> --%>

											<div>
												<div class="about-btn">
													<!-- <button  class="about-view packages-btn submit-button" onclick="location.href = 'http://localhost:8080/onlineshopping/show/104/product';">
												book now
											</button> -->
													<a ng-href="${contextRoot}/show/{{product.id}}/product"
														class="about-view packages-btn text-white">View</a>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

					</div>

				</section>
 
 
 
 
 
 