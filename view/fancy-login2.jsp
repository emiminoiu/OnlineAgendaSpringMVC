<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html lang="en">
<head>
	<title>IncesaApp3</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Reference Bootstrap files -->
	<link rel="stylesheet"
		 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/imageslogin/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendorlogin/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fontslogin/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fontslogin/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendorlogin/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendorlogin/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendorlogin/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendorlogin/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendorlogin/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/csslogin/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/csslogin/main.css">
<!--===============================================================================================-->
</head>
<body>
	<form action="${pageContext.request.contextPath}/authenticateTheUser" 
						  method="POST" class="form-horizontal">
	<div class="limiter">
		<div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/resources/imageslogin/bg-01.jpg');">
			<div class="wrap-login100">
				<div class="login100-form">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>
                    
					<span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>
					  <!-- Place for messages: error, alert etc ... -->
					    <div class="form-group">
					        <div class="col-xs-15">
					            <div>
								
									<!-- Check for login error -->
								
									<c:if test="${param.error != null}">
										
										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Invalid username and password.
										</div>
		
									</c:if>
										
									<!-- Check for logout -->

									<c:if test="${param.logout != null}">
										            
										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											You have been logged out.
										</div>
								    
									</c:if>
									
					            </div>
					        </div>
					    </div>
                    <!-- Login Form -->
					
					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>
   
					<div class="container-login100-form-btn">
						<button type = "submit" class="login100-form-btn">
							Login
						</button>
					</div>
					<input type="hidden"
							   name="${_csrf.parameterName}"
							   value="${_csrf.token}" />

					<div class="text-center p-t-90">
						<a class="txt1" href="#">
							Forgot Password?
						</a>
					</div>
					</div>
			
			</div>
				
		</div>
	</div>
		</form>

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendorlogin/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/jslogin/main.js"></script>

</body>
</html>