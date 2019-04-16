<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style1.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<head>
<title>List Customers</title>

<!-- reference our style sheet -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>


	<div id="container">

		<div id="content">
			

			<!--  add a search box -->
			<form:form action="search" method="GET">
				Search customer: <input type="text" name="theSearchName" />

				<input type="submit" value="Search" class="add-button" />
			</form:form>

		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>

				<!-- loop over and print our customers -->
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

					<c:url var="eventsLink" value="/event/showEvents">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					<c:url var="todayEvents" value="/event/showTodayEvents">
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<tr>
						<td><a href="${profileLink}">${tempCustomer.firstName} </a></td>
						<td><a href="${profileLink}">${tempCustomer.lastName}</a></td>
						<td><a href="${profileLink}"> ${tempCustomer.email} </a></td>

						<td><security:authorize access="hasRole('MANAGER')">
								<!-- display the update link -->
								<a href="${updateLink}">Update</a>
							| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								<br>
								<a href="${AddAdditionalInfo}">AddAdditionalInfo</a>
								<br>

							</security:authorize> <security:authorize access="hasRole('ADMIN')">

							</security:authorize> <security:authorize access="hasRole('EMPLOYEE')">
								<a href="${eventsLink}">See the user's events</a>
								<br>
								<a href="${todayEvents}">See today's events</a>
							</security:authorize></td>

					</tr>

				</c:forEach>

			</table>

		</div>

	</div>
	<br>
	<br>
	<p>
		<a href="${pageContext.request.contextPath}/">Back to Main Page</a>
	</p>
</body>

</html>









