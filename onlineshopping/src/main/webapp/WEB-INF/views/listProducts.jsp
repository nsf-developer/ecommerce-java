


<%-- <header class="section background-image text-center" style="background-image:url(${images}/carousel-02.jpg)">
          <h1 class="animated-element slow text-extra-thin text-white text-s-size-30 text-m-size-40 text-size-50 text-line-height-1 margin-bottom-30 margin-top-130">
            Contact Us
          </h1>
          <p class="animated-element text-white">Duis autem vel eum iriure dolor in hendrerit in</p>
          
          <!-- white full width arrow object -->
          <img class="arrow-object" src="${images}/arrow-object-white.svg" alt="">
        </header>
			 --%>

<div class="row">


	<!-- Would be to display sidebar -->
	<div class="col-md-3">
		<div style="margin: 10px">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

	</div>

	<!-- to display the actual products -->
	<div class="col-md-9">

		<div style="margin: 10px;">

			<!-- Added breadcrumb component -->
			<div class="row">

				<div class="col-lg-12">



					<c:if test="${userClickAllProducts == true}">

						<script>
							window.categoryId = '';
						</script>

						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>


						</ol>
					</c:if>


					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>

						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>


						</ol>
					</c:if>


				</div>


			</div>


			<div class="row">

				<div class="col-xs-12">


					<table id="productListTable"
						class="table table-striped table-borderd">


						<thead>

							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>

							</tr>

						</thead>


						<tfoot>

							<tr>
								<th></th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>

							</tr>

						</tfoot>
					</table>

				</div>

			</div>
		</div>

	</div>



</div>
