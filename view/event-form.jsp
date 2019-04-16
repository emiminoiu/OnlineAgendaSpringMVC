<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>

<head>
<title>Save Event</title>
<style>
.error {
	color: red
}
</style>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style1.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Add Event</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Event</h3>

		<form:form action="saveEvent" modelAttribute="event" method="GET">
			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
			<table>
				<tbody>
					<tr>
						<td><label>Title:</label></td>
						<td><form:input path="title" /></td>
						<td><form:errors path="title" cssClass="error" /></td>
					</tr>

					<tr>
						<td><label>Date:</label></td>
						<td><form:input path="date" /></td>
						<td><form:errors path="date" cssClass="error" /></td>
					</tr>

					<tr>
						<td><label>Time:</label></td>
						<td><form:input path="time" /></td>
						<td><form:errors path="time" cssClass="error" /></td>
					</tr>
					<tr>
						<td><label>Place:</label></td>
						<td><form:input path="place" /></td>
						<td><form:errors path="place" cssClass="error" /></td>
					</tr>
					<tr>
						<td><label>Description:</label></td>
						<td><form:input path="description" /></td>
						<td><form:errors path="description" cssClass="error" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>


				</tbody>
			</table>


		</form:form>

		

		<p>
			<a href="${pageContext.request.contextPath}/customer/fancylist">Back to
	List</a>
		</p>

	</div>

</body>

</html>










