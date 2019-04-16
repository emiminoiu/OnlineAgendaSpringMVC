<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>

<html>

<head>
<title>${customerProfile.firstName}
	${customerProfile.lastName}'s Events</title>

<!-- reference our style sheet -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style1.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>${customerProfile.firstName}${customerProfile.lastName}'s
				Events</h2>

		</div>
	</div>
	<div id="container">

		<div id="content">
			<security:authorize access="hasRole('MANAGER')">
				<input type="button" value="Add Event"
					onclick="window.location.href='AddFancyEventForm'; return false;"
					class="add-button" />
			</security:authorize>
			<security:authorize access="hasRole('ADMIN')">
				<input type="button" value="Add Event"
					onclick="window.location.href='AddEventForm'; return false;"
					class="add-button" />
			</security:authorize>
			<c:forEach var="tempCustomer" items="${customers}">
				<c:url var="eventLink" value="/event/AddFancyEventForm">
					<c:param name="customerId" value="${tempCustomer.id}" />
				</c:url>
				<a href="${eventsLink}">Add Event</a>

			</c:forEach>
			<table>
				<tr>
					<th>Title</th>
					<th>Date</th>
					<th>Time</th>
					<th>Place</th>
					<th>Description</th>
					<th>Action</th>

				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempEvents" items="${events}">

					<c:url var="updateLink" value="/event/showFormForUpdate">
						<c:param name="eventId" value="${tempEvents.id}" />
					</c:url>
					<c:url var="deleteLink" value="/event/delete">
						<c:param name="eventId" value="${tempEvents.id}" />
					</c:url>
					<tr>
						<td>${tempEvents.title}</td>
						<td>${tempEvents.date}</td>
						<td>${tempEvents.time}</td>
						<td>${tempEvents.place}</td>
						<td>${tempEvents.description}</td>

						<td><security:authorize access="hasRole('MANAGER')">
								<!-- display the update link -->
								<a href="${updateLink}">Update</a>
							| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this event?'))) return false">Delete</a>
							</security:authorize></td>
							
						<td><security:authorize access="hasRole('ADMIN')">
								<!-- display the update link -->
								<a href="${updateLink}">Update</a>
							| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this event?'))) return false">Delete</a>
							</security:authorize></td>


					</tr>
				</c:forEach>


			</table>

		</div>
	</div>

</body>
<br>
<br>
<br>
<br>
<br>
<br>
<a href="${pageContext.request.contextPath}/customer/fancylist">Back to
	List</a>
</html>









