<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- reference our style sheet -->

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style1.css" />
<!DOCTYPE html>

<html>

<head>
<title>${customerEventProfile.firstName}
	${customerEventProfile.lastName}'s today's events</title>



</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>${customerEventProfile.firstName}${customerEventProfile.lastName}'s today's
				events</h2>

		</div>
	</div>
	<div id="container">

		<div id="content">

			<input type="button" value="Add Event"
				onclick="window.location.href='AddEventForm'; return false;"
				class="add-button" />


			<table>
				<tr>
					<th>Title</th>
					<th>Date</th>
					<th>Time</th>
					<th>Place</th>
					<th>Description</th>

				</tr>
				<!-- loop over and print our customers -->
				<c:forEach var="tempEvents" items="${todayEvents}">
					<tr>
						<td>${tempEvents.title}</td>
						<td>${tempEvents.date}</td>
						<td>${tempEvents.time}</td>
						<td>${tempEvents.place}</td>
						<td>${tempEvents.description}</td>


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









