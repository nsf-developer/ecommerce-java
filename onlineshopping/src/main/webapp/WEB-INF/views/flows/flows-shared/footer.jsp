<%-- 		</div>


		<!-- Footer comes here -->
		<%@include file="../../shared/footer.jsp"%>

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

	</div>

</body>

</html> --%>


<!-- Footer comes here  -->
	<%@include file="../../shared/footer.jsp"%>




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