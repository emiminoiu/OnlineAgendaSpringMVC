<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!-- Add icon library -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style1.css">




<c:forEach var="tempCustomer" items="${customerProfile}">
	<div class="container">
		<div class="avatar-flip">
			<img src="resources/images/poza4.jpg"
				height="500" width="500" /> <img src="resources/images/poza4.jpg"
				height="500" width="500" />
		</div>
		<h2>${customerProfile.firstName}${customerProfile.lastName}</h2>
		<h4>${customerProfile.email}</h4>

		<p>Age: ${customerDetail.age}</p>
		<p>Faculty: ${customerDetail.faculty}</p>
		<p>Hobby: ${customerDetail.hobby}</p>

		<p>
			<a href="${pageContext.request.contextPath}/customer/fancylist">Back to
	List</a>
		</p>
	</div>
</c:forEach>


