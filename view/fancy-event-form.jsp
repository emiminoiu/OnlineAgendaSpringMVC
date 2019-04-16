<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>IncesaApp3</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.error {
	color: red
}
</style>

<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/images2/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts2/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts2/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor2/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor2/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor2/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor2/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor2/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css2/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css2/main.css">
<!--===============================================================================================-->
</head>
<body>






	<div class="container-contact100">

		<div class="wrap-contact100">
		<div class="contact100-form">
			<form:form action="saveEvent" modelAttribute="event" method="GET">
				<form:hidden path="id" />
				
					<span class="contact100-form-title"> Enter the event's
						details bellow </span> <label class="label-input100" for="first-name">Tell
						us the date and time *</label>



					<div class="wrap-input100 rs1-wrap-input100 validate-input"
						data-validate="Type date">
						<form:input path="date" class="input100" type="text"
							placeholder="Date" />
						<form:errors path="date" cssClass="error" />
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 rs2-wrap-input100 validate-input"
						data-validate="Type time">
						<form:input path="time" class="input100" type="text"
							placeholder="Time" />
						<form:errors path="time" cssClass="error" />
						<span class="focus-input100"></span>
					</div>

					<label class="label-input100" for="message">Enter the Title
						*</label>
					<div class="wrap-input100 validate-input"
						data-validate="Type the title(name)">
						<form:input path="title" class="input100" type="text"
							name="last-name" placeholder="Event Title" />
						<form:errors path="title" cssClass="error" />
						<span class="focus-input100"></span>
					</div>
					<label class="label-input100" for="email">Enter the Place</label>
					<div class="wrap-input100 validate-input"
						data-validate="Type place">
						<form:input path="place" class="input100" type="text"
							placeholder="ex San Francisco" />
						<form:errors path="place" cssClass="error" />
						<span class="focus-input100"></span>
					</div>



					<label class="label-input100" for="message">Enter the
						Description *</label>
					<div class="wrap-input100 validate-input"
						data-validate="Description is required">
						<form:input path="description" id="message" class="input100"
							name="message" placeholder="any description here" />
						<form:errors path="description" cssClass="error" />
						<span class="focus-input100"></span>
					</div>

					<div class="container-contact100-form-btn">
						<button class="contact100-form-btn" type="submit">Add
							Event</button>
					</div>

					<div class="container-contact100-form-btn">


						<button class="contact100-form-btn">
							<a href="${pageContext.request.contextPath}/customer/fancylist">
								Back to Event List </a>
						</button>

					</div>
				
			</form:form>
			</div>
			<div class="contact100-more flex-col-c-m"
				style="background-image: url('${pageContext.request.contextPath}/resources/images2/bg-01.jpg');">
				<div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20"> Address </span> <span class="txt2">
							Bulevardul Decebal 97, Craiova </span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20"> Lets Talk </span> <span class="txt3">
							0251 414 548 </span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20"> General Support </span> <span
							class="txt3"> incesa@gmail.com </span>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/bootstrap/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});
	</script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendor2/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/js2/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>