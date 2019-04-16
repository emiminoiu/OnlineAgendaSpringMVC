<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">

<title>IncesaApp3</title>

<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">

<!-- animate -->
<link rel="stylesheet" type="text/css"
	href="resources/css/animate.min.css">
<!-- bootstrap -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<!-- font-awesome -->
<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.min.css">
<!-- google font -->
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,300,700,800'
	rel='stylesheet' type='text/css'>
<!-- custom -->
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">

	<!-- start navigation -->
	<div class="navbar navbar-fixed-top navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand"><img
					src="resources/images/logo.png" class="img-responsive" alt="logo"></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">

					<li class="active"><a href="#"> Welcome back <security:authentication
								property="principal.username" />!
							<li class="active"><a href="#">IncesaApp-SpringMVC</a></li>
							<li><a href='fancylist' class="smoothScroll">See my
									Customers</a></li>
							<li><a href="#service" class="smoothScroll">SERVICE</a></li>
							<li><a href="#about" class="smoothScroll">ABOUT</a></li>
							<li><a href="#team" class="smoothScroll">OWNER</a></li>
							<li><a href="#newsletter" class="smoothScroll">Search</a></li>
							<li><a href="#contact" class="smoothScroll">CONTACT</a></li> <security:authorize
								access="hasRole('MANAGER')">
								<li><a href='showFormForFancyAdd' class="smoothScroll">Add
										a Customer</a></li>
							</security:authorize> <security:authorize access="hasRole('ADMIN')">
								<li><a href='showFormForAdd' class="smoothScroll">Add a
										Customer</a></li>
							</security:authorize>
							<li><a
								href="${pageContext.request.contextPath}/showMyLoginPage"><span
									class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end navigation -->



	<!-- start service -->
	<div id="service">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<div class="media">
						<div class="media-object media-left wow fadeIn"
							data-wow-delay="0.1s">
							<i class="fa fa-laptop"></i>
						</div>
						<div class="media-body wow fadeIn">
							<h3 class="media-heading">Fully Responsive</h3>
							<p>Very smooth experience because of Spring MVC Framework.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="media">
						<div class="media-object media-left wow fadeIn"
							data-wow-delay="0.3s">
							<i class="fa fa-cog"></i>
						</div>
						<div class="media-body wow fadeIn">
							<h3 class="media-heading">Easy to Use</h3>
							<p>Very easy and friendly to operate with our electronic
								agenda.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="media">
						<div class="media-object media-left wow fadeIn"
							data-wow-delay="0.6s">
							<i class="fa fa-paper-plane"></i>
						</div>
						<div class="media-body wow fadeIn" data-wow-delay="0.3s">
							<h3 class="media-heading">Friendly Design</h3>
							<p>Friendly design because of css + bootstrap tools.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="media">
						<div class="media-object media-left wow fadeIn"
							data-wow-delay="0.9s">
							<i class="fa fa-html5"></i>
						</div>
						<div class="media-body wow fadeIn" data-wow-delay="0.6s">
							<h3 class="media-heading">HTML5 Website</h3>
							<p>HTML 5 is the fifth revision and newest version of the
								HTML standard.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="media">
						<div class="media-object media-left wow fadeIn"
							data-wow-delay="0.4s">
							<i class="fa fa-comments-o"></i>
						</div>
						<div class="media-body wow fadeIn" data-wow-delay="0.3s">
							<h3 class="media-heading">Quick Support</h3>
							<p>We are very responsive,we'll get in touch with you in less
								than 24hours.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4">
					<div class="media">
						<div class="media-object media-left wow fadeIn"
							data-wow-delay="0.8s">
							<i class="fa fa-check-circle"></i>
						</div>
						<div class="media-body wow fadeIn" data-wow-delay="0.6s">
							<h3 class="media-heading">Up to Date</h3>
							<p>Our tech is up to date.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end service -->

	<!-- start divider -->
	
	<!-- end divider -->

	<!-- start about -->
	<div id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 wow fadeInLeft" data-wow-delay="0.9s">
					<h3>About Solution</h3>
					<h4>Smart, Light and Adaptive</h4>
					<p>The software may be a local application designed for
						individual use (e.g. the Lightning extension for Mozilla
						Thunderbird, Microsoft Outlook without Exchange Server, or Windows
						Calendar) or may be a networked package that allows for the
						sharing of information between users (e.g. Mozilla Sunbird,
						Windows Live Calendar, Google Calendar, or Microsoft Outlook with
						Exchange Server).</p>
				</div>
				<div class="col-md-6 col-sm-6 wow fadeInRight" data-wow-delay="0.9s">
					<span class="text-top">Web Design <small>100%</small></span>
					<div class="progress">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 100%;"></div>
					</div>
					<span>Multimedia <small>80%</small></span>
					<div class="progress">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
							style="width: 80%;"></div>
					</div>
					<span>Search Engine Marketing <small>90%</small></span>
					<div class="progress">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 90%;"></div>
					</div>
					<span>Custom Branding <small>70%</small></span>
					<div class="progress">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
							style="width: 70%;"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end about -->

	<!-- start team -->
	<div id="team">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2 class="wow bounce">Meet the Owner</h2>
				</div>
				<div class="col-md-4 col-sm-4 wow fadeIn" data-wow-delay="0.3s">
					<img src="resources/images/poza2.jpg" class="img-responsive"
						alt="team img">

				</div>
				<div class="col-md-4 col-sm-4 wow fadeIn" data-wow-delay="0.6s">
					<img src="resources/images/poza3.jpg" class="img-responsive"
						alt="team img">
					<h4>Developer-Manager</h4>
					<h3>Minoiu George Emilian</h3>
					<ul class="social-icon text-center">
						<li><a href="https://www.facebook.com/emy.continental"
							class="wow fadeInUp fa fa-facebook" data-wow-delay="2s"></a></li>
						<li><a href="#" class="wow fadeInDown fa fa-twitter"
							data-wow-delay="2s"></a></li>
						<li><a href="https://www.instagram.com/emynx2014/?hl=ro"
							class="wow fadeIn fa fa-instagram" data-wow-delay="2s"></a></li>
						<li><a href="#" class="wow fadeInUp fa fa-pinterest"
							data-wow-delay="2s"></a></li>
					</ul>
				</div>
				<div class="col-md-4 col-sm-4 wow fadeIn" data-wow-delay="0.9s">
					<img src="resources/images/poza4.jpg" class="img-responsive"
						alt="team img">
				</div>
			</div>
		</div>
	</div>
	<!-- end team -->

	<!-- start newsletter -->
	<div id="newsletter">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title">
						<h2 class="wow bounce">Search for a customer!</h2>
						<p class="wow fadeIn" data-wow-delay="0.6s">Enter the customer
							name bellow.</p>
					</div>
					<form:form action="search" method="GET">
				CustomerName: <input type="text" placeholder="Enter customer's name"
							name="theSearchName" />

						<input type="submit" value="Search" class="add-button" />
					</form:form>

				</div>
			</div>
		</div>
	</div>
	<!-- end newsletter -->

	<!-- start pricing -->
	<div id="pricing" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12 wow bounce">
					<h2>Our Pricing</h2>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInLeft" data-wow-delay="0.6s">
					<div class="plan plan_one">
						<h4 class="plan_title">Basic Account</h4>
						<ul>
							<li>$20 per month</li>
							<li>50 events max</li>
							<li>Email notification for your events</li>
							<li>24-hr support</li>
						</ul>
						<button class="btn btn-warning">SIGN UP</button>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInUp" data-wow-delay="0.9s">
					<div class="plan plan_two">
						<h4 class="plan_title">Standard Account</h4>
						<ul>
							<li>$40 per month</li>
							<li>100 events max</li>
							<li>SMS+Email notification for your events</li>
							<li>12-hr response</li>
						</ul>
						<button class="btn btn-warning">SIGN UP</button>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInDown" data-wow-delay="1s">
					<div class="plan plan_three">
						<h4 class="plan_title">Professional Account</h4>
						<ul>
							<li>$60 per month</li>
							<li>250 events max</li>
							<li>SMS+Email notification for your events</li>
							<li>1-hr response</li>
						</ul>
						<button class="btn btn-warning">SIGN UP</button>
					</div>
				</div>
				<div class="col-sm-6 col-md-3 wow fadeInRight" data-wow-delay="1.3s">
					<div class="plan plan_four">
						<h4 class="plan_title">Advanced Account</h4>
						<ul>
							<li>$80 per month</li>
							<li>no limit of events</li>
							<li>SMS+Email notification for your events</li>
							<li>1-hr response</li>
						</ul>
						<button class="btn btn-warning">SIGN UP</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end pricing -->

	<!-- start portfolio -->
	<div id="portfolio">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2 class="wow bounce">Recent Projects</h2>
					<div class="iso-section wow fadeIn" data-wow-delay="0.6s">

						<ul class="filter-wrapper clearfix">
							<li><a href="#" data-filter="*" class="selected opc-main-bg">All</a></li>
							<li><a href="#" class="opc-main-bg" data-filter=".graphic">Graphic</a></li>
							<li><a href="#" class="opc-main-bg" data-filter=".photoshop">Photoshop</a></li>
							<li><a href="#" class="opc-main-bg" data-filter=".wallpaper">Wallpaper</a></li>
						</ul>

						<div class="iso-box-section">
							<div class="iso-box-wrapper col4-iso-box">

								<div
									class="iso-box graphic photoshop wallpaper col-md-4 col-sm-6 col-xs-12">
									<div class="portfolio-thumb">
										<img src="resources/images/portfolio-img1.jpg"
											class="fluid-img" alt="portfolio img">
										<div class="portfolio-overlay">
											<a href="#" class="fa fa-search"></a> <a href="#"
												class="fa fa-link"></a>
											<h4>Project title</h4>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonumm.</p>
										</div>
									</div>
								</div>

								<div
									class="iso-box graphic wallpaper col-md-4 col-sm-6 col-xs-12">
									<div class="portfolio-thumb">
										<img src="resources/images/portfolio-img2.jpg"
											class="fluid-img" alt="portfolio img">
										<div class="portfolio-overlay">
											<a href="#" class="fa fa-search"></a> <a href="#"
												class="fa fa-link"></a>
											<h4>Project title</h4>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonumm.</p>
										</div>
									</div>
								</div>

								<div class="iso-box wallpaper col-md-4 col-sm-6 col-xs-12">
									<div class="portfolio-thumb">
										<img src="resources/images/portfolio-img3.jpg"
											class="fluid-img" alt="portfolio img">
										<div class="portfolio-overlay">
											<a href="#" class="fa fa-search"></a> <a href="#"
												class="fa fa-link"></a>
											<h4>Project title</h4>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonumm.</p>
										</div>
									</div>
								</div>

								<div class="iso-box graphic col-md-4 col-sm-6 col-xs-12">
									<div class="portfolio-thumb">
										<img src="resources/images/portfolio-img4.jpg"
											class="fluid-img" alt="portfolio img">
										<div class="portfolio-overlay">
											<a href="#" class="fa fa-search"></a> <a href="#"
												class="fa fa-link"></a>
											<h4>Project title</h4>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonumm.</p>
										</div>
									</div>
								</div>

								<div class="iso-box wallpaper col-md-4 col-sm-6 col-xs-12">
									<div class="portfolio-thumb">
										<img src="resources/images/portfolio-img5.jpg"
											class="fluid-img" alt="portfolio img">
										<div class="portfolio-overlay">
											<a href="#" class="fa fa-search"></a> <a href="#"
												class="fa fa-link"></a>
											<h4>Project title</h4>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonumm.</p>
										</div>
									</div>
								</div>

								<div
									class="iso-box graphic photoshop col-md-4 col-sm-6 col-xs-12">
									<div class="portfolio-thumb">
										<img src="resources/images/portfolio-img6.jpg"
											class="fluid-img" alt="portfolio img">
										<div class="portfolio-overlay">
											<a href="#" class="fa fa-search"></a> <a href="#"
												class="fa fa-link"></a>
											<h4>Project title</h4>
											<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
												elit, sed diam nonumm.</p>
										</div>
									</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end portfolio -->

	<!-- start contact -->
	<div id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-4 wow fadeInLeft" data-wow-delay="0.6s">
					<h2>
						<strong>INCESA APP - SPRING MVC</strong>
					</h2>
					<p>IncesaAPP3 - Friendly design version</p>
					<ul class="social-icon">
						<li><a href="#" class="fa fa-facebook"></a></li>
						<li><a href="#" class="fa fa-twitter"></a></li>
						<li><a href="#" class="fa fa-instagram"></a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-4 wow fadeIn" data-wow-delay="0.9s">
					<address>
						<h3>Visit Office</h3>
						<p>
							<i class="fa fa-map-marker too-icon"> Bulevardul Decebal 97,
								Craiova</i>

						</p>
						<p>
							<i class="fa fa-phone too-icon"></i> 010-010-0220
						</p>
						<p>
							<i class="fa fa-envelope-o too-icon"></i> incesa@company.com
						</p>
					</address>
				</div>
				<form action="#" method="post" class="col-md-6 col-sm-4"
					id="contact-form" role="form">
					<div class="col-md-6 col-sm-12 wow fadeIn" data-wow-delay="0.3s">
						<input name="name" type="text" class="form-control" id="name"
							placeholder="Name">
					</div>
					<div class="col-md-6 col-sm-12 wow fadeIn" data-wow-delay="0.3s">
						<input name="email" type="email" class="form-control" id="email"
							placeholder="Email">
					</div>
					<div class="col-md-12 col-sm-12 wow fadeIn" data-wow-delay="0.9s">
						<textarea name="message" rows="5" class="form-control"
							id="message" placeholder="Message"></textarea>
					</div>
					<div class="col-md-offset-9 col-md-3 col-sm-6 wow fadeIn"
						data-wow-delay="0.3s">
						<input name="submit" type="submit" class="form-control"
							id="submit" value="Send">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- end contact -->

	<!-- start google map -->
	<div class="google_map">
		<div id="map-canvas"></div>
	</div>
	<!-- end google map -->

	<!-- start footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-7">

					<small>Designed by <a rel="nofollow"
						href="http://www.tooplate.com" target="_parent">IncesaApp</a></small>
				</div>
				<div class="col-md-4 col-sm-5">
					<ul class="social-icon">
						<li><a href="#" class="fa fa-facebook"></a></li>
						<li><a href="#" class="fa fa-twitter"></a></li>
						<li><a href="#" class="fa fa-instagram"></a></li>
						<li><a href="#" class="fa fa-pinterest"></a></li>
						<li><a href="#" class="fa fa-google"></a></li>
						<li><a href="#" class="fa fa-github"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->


	<!-- jQuery -->
	<script src="resouces/js/jquery.js"></script>
	<!-- bootstrap -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- isotope -->
	<script src="resources/js/isotope.js"></script>
	<!-- images loaded -->
	<script src="resources/js/imagesloaded.min.js"></script>
	<!-- wow -->
	<script src="resources/js/wow.min.js"></script>
	<!-- smoothScroll -->

	<!-- jquery flexslider -->
	<script src="resources/js/jquery.flexslider.js"></script>
	<!-- custom -->
	<script src="resources/js/custom.js"></script>
	<script src="resources/js/smoothscroll.js"></script>

</body>
</html>






