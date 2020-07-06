<%@include file="../flows-shared/header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


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

				<h3 class="text-size-30 text-center margin-bottom-0">
					<b>SIGN UP</b>
				</h3>
				<h4 class="text-size-12 margin-bottom-40 text-center"
					style="color: #dd442c;">
					<b>Address</b>
				</h4>

				<sf:form method="POST" modelAttribute="billing"
					class="customform text-white" id="billingForm"
					enctype="multipart/form-data">

					<div class="line">
						<div class="s-12 m-12 l-12">
							<sf:input type="text" path="addressLineOne"
								class="required margin-bottom-20" placeholder="Address Line One"
								title="Your Address Line One" />
							<sf:errors path="addressLineOne" cssClass="help-block"
								element="em" />
						</div>

						<div class="s-12 m-12 l-12">
							<sf:input type="text" path="addressLineTwo"
								class="required margin-bottom-20" placeholder="Address Line Two"
								title="Your Address Line Two" />
							<sf:errors path="addressLineTwo" cssClass="help-block"
								element="em" />
						</div>
					</div>
					
					<div class="line">
						<div class="margin">
							<div class="s-12 m-12 l-6">
								<sf:input type="text" path="city"
									class="required margin-bottom-20" placeholder="City"
									title="Your City Name" />
								<sf:errors path="city" cssClass="help-block" element="em" />
							</div>
	
							<div class="s-12 m-12 l-6">
								<sf:input type="text" path="postalCode"
									class="margin-bottom-20" placeholder="Postal Code"
									title="Your Postal Code" />
								<sf:errors path="postalCode" cssClass="help-block" element="em" />
							</div>
						</div>	
					</div>	
						
						
					<div class="line">	

						<div class="s-12 m-12 l-12">
							<sf:input type="text" path="state"
								class="required margin-bottom-20" placeholder="State"
								title="Your State Name" />
							<sf:errors path="state" cssClass="help-block" element="em" />
						</div>

						<div class="s-12 m-12 l-12">
							<sf:input type="text" path="country"
								class="required margin-bottom-20" placeholder="Country"
								title="Your Country Name" />
							<sf:errors path="country" cssClass="help-block" element="em" />
						</div>

						<div class="s-12">
							<div class="margin">
								<div class="s-12 m-12 l-6">
									<button type="submit" name="_eventId_personal"
										class="button border-radius text-white background-primary margin-top-20">Back
										- Personal</button>
								</div>
								<div class="s-12 m-12 l-6">
									<button type="submit" name="_eventId_confirm"
										class="button border-radius text-white background-primary margin-top-20">Next
										- Confirm</button>
								</div>
							</div>


						</div>

						<div class="s-12">
							<p class="text-center margin-top-20">Your Billing Address Details</p>
						</div>


					</div>

					<div class="line">
						<hr
							class="break background-primary break-big break-center margin-bottom-20r">
					</div>

				</sf:form>
			</div>
		</section>
	</article>
</main>




<%-- <div class="container">
		
		
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3">
				
				<div class="panel panel-primary">
				
					<div class="panel-heading">
						<h4>Sign Up - Address</h4>
					</div>
					
					<div class="panel-body">
										
						<sf:form
							method="POST"
							modelAttribute="billing"
							class="form-horizontal"
							id="billingForm"
						>
						
							
							<div class="form-group">
								<label class="control-label col-md-4" for="addressLineOne">Address Line One</label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineOne" class="form-control"
										placeholder="Enter Address Line One" />
									<sf:errors path="addressLineOne" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="addressLineTwo">Address Line Two</label>
								<div class="col-md-8">
									<sf:input type="text" path="addressLineTwo" class="form-control"
										placeholder="Enter Address Line Two" />
									<sf:errors path="addressLineTwo" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="city">City</label>
								<div class="col-md-8">
									<sf:input type="text" path="city" class="form-control"
										placeholder="Enter City Name" />
									<sf:errors path="city" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							<div class="form-group">
								<label class="control-label col-md-4" for="postalCode">Postal Code</label>
								<div class="col-md-8">
									<sf:input type="text" path="postalCode" class="form-control"
										placeholder="XXXXXX" />
									<sf:errors path="postalCode" cssClass="help-block" element="em"/> 
								</div>
							</div>							
						
							<div class="form-group">
								<label class="control-label col-md-4" for="state">State</label>
								<div class="col-md-8">
									<sf:input type="text" path="state" class="form-control"
										placeholder="Enter State Name" />
									<sf:errors path="state" cssClass="help-block" element="em"/> 
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-4" for="country">Country</label>
								<div class="col-md-8">
									<sf:input type="text" path="country" class="form-control"
										placeholder="Enter Country Name" />
									<sf:errors path="country" cssClass="help-block" element="em"/> 
								</div>
							</div>
							
							
							<div class="form-group">
								<div class="col-md-offset-4 col-md-8">
									<button type="submit" name="_eventId_personal" class="btn btn-primary">
										<span class="glyphicon glyphicon-chevron-left"></span> Back - Personal
									</button>								
									<button type="submit" name="_eventId_confirm" class="btn btn-primary">
										Next - Confirm<span class="glyphicon glyphicon-chevron-right"></span>
									</button>																	 
								</div>
							</div>
						
						
						</sf:form>					
					
					
					</div>
				
				
				</div>
			
			
			</div>
		
		
		</div>
		
		
	</div> --%>

<%@include file="../flows-shared/footer.jsp"%>
