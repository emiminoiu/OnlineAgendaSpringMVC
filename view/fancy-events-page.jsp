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
		<h2>${customerProfile.firstName}${customerProfile.lastName}'s
				Events</h2>
			<div class="wrap-table100">
			<security:authorize access="hasRole('MANAGER')">
				<input type="button" value="Add Event"
					onclick="window.location.href='AddFancyEventForm'; return false;"
					class="add-button" />
			</security:authorize>
			<security:authorize access="hasRole('ADMIN')">
				<input type="button" value="Add Event"
					onclick="window.location.href='AddFancyEventForm'; return false;"
					class="add-button" />
			</security:authorize>
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Title</th>
								<th class="column2">Date</th>
								<th class="column3">Description</th>
								<th class="column4">Place</th>
								<th class="column5">Time</th>
								<th class="column6">Weather</th>
								<security:authorize access="hasRole('MANAGER')">
									<th class="column6">Actions</th>
								</security:authorize>
								<security:authorize access="hasRole('ADMIN')">
									<th class="column6">Actions</th>
								</security:authorize>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="tempEvents" items="${events}">

								<c:url var="updateLink" value="/event/showFormForUpdate">
									<c:param name="eventId" value="${tempEvents.id}" />
								</c:url>
								<c:url var="deleteLink" value="/event/delete">
									<c:param name="eventId" value="${tempEvents.id}" />
								</c:url>
								<c:url var="weatherLink" value="/weather_search">
									<c:param name="eventId" value="${tempEvents.id}" />
								</c:url>
								<tr>
									<td class="column1">${tempEvents.title}</td>
									<td class="column2">${tempEvents.date}</td>
									<td class="column3">${tempEvents.description}</td>
									<td class="column4">${tempEvents.place}</td>
									<td class="column5">${tempEvents.time}</td>
									<td class="column6"><a href="${weatherLink}">Weather in ${tempEvents.place} </a></td>
									<security:authorize access="hasRole('MANAGER')">
										<td class="column6">
											<!-- display the update link --> <a href="${updateLink}">Update</a>
											| <a href="${deleteLink}"
											onclick="if (!(confirm('Are you sure you want to delete this event?'))) return false">Delete</a>
										</td>
									</security:authorize>
									<security:authorize access="hasRole('ADMIN')">
										<td class="column6">
											<!-- display the update link --> <a href="${updateLink}">Update</a>
											| <a href="${deleteLink}"
											onclick="if (!(confirm('Are you sure you want to delete this event?'))) return false">Delete</a>
										</td>
									</security:authorize>


								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<p>
		<a href="${pageContext.request.contextPath}/customer/fancylist">Back to
	List</a>
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