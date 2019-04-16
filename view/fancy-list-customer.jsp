<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>IncesaApp3</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/imagestbl/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendortbl/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fontstbl/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendortbl/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendortbl/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendortbl/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/csstbl/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/csstbl/main.css">
	<style>.add-button {
	border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 120px; 
	padding: 5px 10px; 
	color:red;
	margin-bottom: 15px;
	background: #cccccc;
}</style>
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-table100">
		
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">First Name</th>
								<th class="column2">Last Name</th>
								<th class="column3">Email</th>
								<security:authorize
											access="hasRole('MANAGER')">
								<th class="column4">ActionSetPrimary</th>
								</security:authorize>
								<th class="column4">ActionSetSecondary</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="tempCustomer" items="${customers}">

								<!-- construct an "update" link with customer id -->
								<c:url var="updateLink" value="/customer/showFormForUpdate">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>
								<c:url var="AddAdditionalInfo"
									value="/customer/editCustomerDetails">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>
								<!-- construct an "delete" link with customer id -->
								<c:url var="deleteLink" value="/customer/delete">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>
								<c:url var="profileLink" value="/customer/showProfile">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>

								<c:url var="eventsLink" value="/event/showFancyEvents">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>
								<c:url var="todayEvents" value="/event/showFancyTodayEvents">
									<c:param name="customerId" value="${tempCustomer.id}" />
								</c:url>
								<tr>
									<td class="column1"><a href="${profileLink}">${tempCustomer.firstName}
									</a></td>
									<td class="column2"><a href="${profileLink}">${tempCustomer.lastName}</a></td>
									<td class="column3"><a href="${profileLink}">
											${tempCustomer.email} </a></td>
									<security:authorize
											access="hasRole('MANAGER')">
									<td class="column4">
											<!-- display the update link -->
											<a href="${updateLink}">Update</a>
							 <a href="${deleteLink}"
												onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
											<br>
											<a href="${AddAdditionalInfo}">AddAdditionalInfo</a>
											<br>

									

										</td>
										</security:authorize>
								    <td class="column5">	
											<a href="${eventsLink}">See the user's events</a>
											<br>
											<a href="${todayEvents}">See today's events</a>
									
									</td>	
								</tr>
							
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<p>
		<a href="${pageContext.request.contextPath}/" >Back to Main Page</a>
	</p>
			
		</div>
	</div>



	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendortbl/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendortbl/bootstrap/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendortbl/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/vendortbl/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="${pageContext.request.contextPath}/resources/jstbl/main.js"></script>

</body>
</html>