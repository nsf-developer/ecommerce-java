
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
							<a href="${contextRoot}/home" class="logo"> <!-- Logo White Version -->
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
							<a href="${contextRoot}/home" class="logo"> <!-- Logo White Version -->
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
			</header>