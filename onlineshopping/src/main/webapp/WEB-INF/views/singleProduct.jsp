<div class="container">

	<!-- Breadcrumb -->
	<div class="row">
		
		<div class="col-xs-12">	
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">Home</a></li>
				<li><a href="${contextRoot}/show/all/products">Products</a></li>
				<li class="active">${product.name}</li>
			</ol>
		</div>
	
	</div>
	
	
	<div class="row">
	
		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-6">
		
			<div>
							
				<img src="${images}/${product.code}.jpg" class="img img-responsive" style="width:450px; height:450px; float:right;"/>
						
			</div>
		
		</div>
	
		 
		<!-- Display the product description -->	
		<div class="col-xs-12 col-sm-6">
		
			<div class="col-xs-10">
		
			<h3 style="font-size: 30px; margin-bottom: 0px;font-family:Candara; margin-bottom:30px;">${product.name}</h3>
			
			<p style="margin-bottom:30px;">${product.description}</p>
			
			<div class="col-sm-6" style="padding-left:0px;" style="margin-bottom:10px;"> 
				<p>${product.brand}</p>
			</div>
			
			<div class="col-sm-6" style="margin-bottom:10px;" >
				<h4 style="float:right; font-family:Bahnschrift SemiBold;">LKR ${product.unitPrice}0/-</h4>
			</div>
			
			
			
			
			
			
			
			<security:authorize access="isAnonymous() or hasAuthority('USER')">	

			<c:choose>
				
				<c:when test="${product.quantity < 1}">
				
					<a href="javascript:void(0)" class="btn btn-success disabled"><strike>
					<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</strike></a>
					
				</c:when>
				<c:otherwise>				
				
				<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart</a>
				
				
				
						
				</c:otherwise>
			
			</c:choose>
			</security:authorize>
			
			
			<security:authorize access="hasAuthority('ADMIN')">
				<a href="${contextRoot}/manage/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-pencil"></span> Edit</a>
			</security:authorize>	
						
			

			<a href="${contextRoot}/show/all/products" class="btn btn-warning">
				Continue Shopping</a>
				
				<c:choose>
				
				<c:when test="${product.quantity < 1}">
				
					<h6>Qty. Available: <span style="color:red">Out of Stock!</span></h6>
					
				</c:when>
				<c:otherwise>				
					
					<h6>Qty. Available: ${product.quantity}</h6>
						
				</c:otherwise>
			
			</c:choose>
				
			</div>		
		</div>

	
	</div>

</div>