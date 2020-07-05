<%@include file="../flows-shared/header.jsp"%>

<section class="section background-dark">

	<div class="s-12 m-12 l-12 center text-white">
		<div class="line">
			<hr
				class="break background-primary break-big break-center margin-bottom-20r">
		</div>

		<div class="line">
			<div class="margin">
				<div class="s-12 m-12 l-6">

					<div class="text-center">
						<h2
							class="text-padding-small background-primary text-white s-12 margin-top-bottom-20">Personal
							Details</h2>

						<h3>
							Name : <strong>${registerModel.user.firstName}
								${registerModel.user.lastName}</strong>
						</h3>
						<h4>
							Email : <strong>${registerModel.user.email}</strong>
						</h4>
						<h4>
							Contact : <strong>${registerModel.user.contactNumber}</strong>
						</h4>
						<h4>
							Role : <strong>${registerModel.user.role}</strong>
						</h4>

					</div>

					<p class="s-3 center">
						<a href="${flowExecutionUrl}&_eventId_personal"
							style="width: 100%;"
							class="button border-radius text-white background-primary">Edit</a>
					</p>

				</div>

				<div class="s-12 m-12 l-6">

					<div class="text-center">
						<h2
							class="text-padding-small background-primary text-white s-12 margin-top-bottom-20">Billing
							Address</h2>

						<p>${registerModel.billing.addressLineOne},</p>
						<p>${registerModel.billing.addressLineTwo},</p>
						<p>${registerModel.billing.city}-
							${registerModel.billing.postalCode},</p>
						<p>${registerModel.billing.state}</p>
						<p>${registerModel.billing.country}</p>

					</div>

					<p class="s-3 center">
						<a href="${flowExecutionUrl}&_eventId_billing"
							style="width: 100%;"
							class="button border-radius text-white background-primary margin-top-10">Edit</a>
					</p>

				</div>

			</div>

			<div class="line">
				<div class="col-sm-4 col-sm-offset-4">

					<div class="text-center">

						<a href="${flowExecutionUrl}&_eventId_submit" style="width: 100%; background-color: #dd442c;"
							class="button border-radius text-white margin-top-20">Confirm</a>

					</div>

				</div>
			</div>

		</div>
	</div>

</section>

<%-- <div class="row">

	<div class="col-sm-4 col-sm-offset-4">

		<div class="text-center">

			<a href="${flowExecutionUrl}&_eventId_submit"
				class="button border-radius text-white background-primary">Confirm</a>

		</div>

	</div>

</div>
 --%>

<%-- <div class="container">
	
	<div class="row">
	
		<div class="col-sm-6">
	
			<div class="panel panel-primary">
				
				<div class="panel-heading">
					<h4>Personal Details</h4>
				</div>
			
				<div class="panel-body">
					<div class="text-center">
						<h3>Name : <strong>${registerModel.user.firstName} ${registerModel.user.lastName}</strong></h3>
						<h4>Email : <strong>${registerModel.user.email}</strong></h4>
						<h4>Contact : <strong>${registerModel.user.contactNumber}</strong></h4>
						<h4>Role : <strong>${registerModel.user.role}</strong></h4>
						<p>
							<a href="${flowExecutionUrl}&_eventId_personal" class="btn btn-primary">Edit</a>
						</p>
					</div>
				</div>
			
			</div>
					
		
		</div>
		
		<div class="col-sm-6">
		
			<div class="panel panel-primary">
				
				<div class="panel-heading">
					<h4>Billing Address</h4>
				</div>
			
				<div class="panel-body">
					<div class="text-center">
						<p>${registerModel.billing.addressLineOne}, </p>
						<p>${registerModel.billing.addressLineTwo}, </p>
						<p>${registerModel.billing.city} -  ${registerModel.billing.postalCode}, </p>
						<p>${registerModel.billing.state}</p>
						<p>${registerModel.billing.country}</p>
						<p>
							<a href="${flowExecutionUrl}&_eventId_billing" class="btn btn-primary">Edit</a>
						</p>
					</div>
				</div>
			
			</div>
		
		</div>
	
	</div> --%>



</div>
<%@include file="../flows-shared/footer.jsp"%>