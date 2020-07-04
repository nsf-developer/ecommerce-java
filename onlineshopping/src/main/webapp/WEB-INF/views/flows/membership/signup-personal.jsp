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

				<h3 class="text-size-30 margin-bottom-40 text-center">
					<b>Sign Up - Personal</b>
				</h3>

				<sf:form method="POST" modelAttribute="user"
					class="customform text-white" id="registerForm"
					enctype="multipart/form-data">

					<div class="line">
						<div class="margin">
							<div class="s-12 m-12 l-6">
								<sf:input type="text" path="firstName"
									class="required email margin-bottom-20"
									placeholder="First Name" title="Your First Name" />
								<sf:errors path="firstName" cssClass="help-block" element="em" />
							</div>

							<div class="s-12 m-12 l-6">
								<sf:input type="text" path="lastName"
									class="email margin-bottom-20" placeholder="Last Name"
									title="Your Last Name" />
								<sf:errors path="lastName" cssClass="help-block" element="em" />
							</div>
						</div>
					</div>

					<div class="line">
						<div class="s-12 m-12 l-12">
							<sf:input type="text" path="email"
								class="required margin-bottom-20" placeholder="Email"
								title="Your Email" />
							<sf:errors path="email" cssClass="help-block" element="em" />
						</div>

						<div class="s-12 m-12 l-12">
							<sf:input type="text" path="contactNumber" maxlength="10"
								class="required margin-bottom-20" placeholder="Contact Number"
								title="Your Contact Number" />
							<sf:errors path="contactNumber" cssClass="help-block"
								element="em" />
						</div>

						<div class="s-12 m-12 l-12">
							<sf:input type="password" path="password"
								class="required margin-bottom-20" placeholder="Password"
								title="Your Password" />
							<sf:errors path="password" cssClass="help-block" element="em" />
						</div>

						<div class="s-12 m-12 l-12">
							<sf:input type="password" path="confirmPassword"
								class="required margin-bottom-20" placeholder="Confirm Password"
								title="Your Last Name" />
							<sf:errors path="confirmPassword" cssClass="help-block"
								element="em" />
						</div>

						<div class="s-12 m-12 l-12">
							<label class="radio-inline margin-right-20"><sf:radiobutton
									path="role" value="USER" checked="checked" />USER</label> <label
								class="radio-inline"><sf:radiobutton path="role"
									value="SUPPLIER" />SUPPLIER</label>
						</div>

						<div class="s-12">
							<button type="submit" name="_eventId_billing"
								class="button border-radius text-white background-primary margin-top-20"
								>Next - Billing</button>
						</div>

						<div class="s-12">
							<p class="text-center margin-bottom-10">Your personal informations</p>
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
					<h4>Sign Up - Personal</h4>
				</div>

				<div class="panel-body">

					<sf:form method="POST" modelAttribute="user"
						class="form-horizontal" id="registerForm">


						<div class="form-group">
							<label class="control-label col-md-4">First Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="firstName" class="form-control"
									placeholder="First Name" />
								<sf:errors path="firstName" cssClass="help-block" element="em" />
							</div>
						</div>


						<div class="form-group">
							<label class="control-label col-md-4">Last Name</label>
							<div class="col-md-8">
								<sf:input type="text" path="lastName" class="form-control"
									placeholder="Last Name" />
								<sf:errors path="lastName" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Email</label>
							<div class="col-md-8">
								<sf:input type="text" path="email" class="form-control"
									placeholder="abc@zyx.com" />
								<sf:errors path="email" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Contact Number</label>
							<div class="col-md-8">
								<sf:input type="text" path="contactNumber" class="form-control"
									placeholder="XXXXXXXXXX" maxlength="10" />
								<sf:errors path="contactNumber" cssClass="help-block"
									element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="password" class="form-control"
									placeholder="Password" />
								<sf:errors path="password" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Confirm Password</label>
							<div class="col-md-8">
								<sf:input type="password" path="confirmPassword"
									class="form-control" placeholder="Re-type password" />
								<sf:errors path="confirmPassword" cssClass="help-block"
									element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Select Role</label>
							<div class="col-md-8">
								<label class="radio-inline"> <sf:radiobutton path="role"
										value="USER" checked="checked" /> User
								</label> <label class="radio-inline"> <sf:radiobutton
										path="role" value="SUPPLIER" /> Supplier
								</label>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-offset-4 col-md-8">
								<button type="submit" name="_eventId_billing"
									class="btn btn-primary">
									Next - Billing <span class="glyphicon glyphicon-chevron-right"></span>
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
