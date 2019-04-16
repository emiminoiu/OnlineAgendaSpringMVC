<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>IncesaApp3</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}customer//resources/css/style1.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}customer//resources/css/add-customer-style.css">

<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="customer/resources/images1/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/fonts1/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/fonts1/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/vendor1/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/vendor1/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="customer/resources/vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="customer/resources/css1/util.css">
<link rel="stylesheet" type="text/css" href="customer/resources/css1/main.css">

<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047"
			data-map-y="-73.986422"
			data-pin="customer/resources/images1/icons/map-marker.png"
			data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title"
				style="background-image: url(customer/resources/images1/bg-01.jpg);">
				<span class="contact100-form-title-1"> Add a Customer </span> <span
					class="contact100-form-title-2"> Add your customer's info
					below! </span>
			</div>
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">

				<!-- need to associate this data with customer id -->
				<form:hidden path="id" />

				
					<div class="wrap-input100 validate-input">
						<span class="label-input100">First Name:</span>
						<form:input path="firstName" class="input100"
							placeholder="Enter first name" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input">
						<span class="label-input100">Last Name:</span>
						<form:input path="lastName" class="input100"
							placeholder="Enter last name" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input">
						<span class="label-input100">Email:</span>
						<form:input path="email" class="input100"
							placeholder="Enter email addess" />
						<span class="focus-input100"></span>
					</div>


					<input type="submit" value="Save" class="save" />
			
			</form:form>
				
		</div>
	</div>

<p>
			<a href="${pageContext.request.contextPath}/">Back to Main Page</a>
		</p>







</body>
</html>
