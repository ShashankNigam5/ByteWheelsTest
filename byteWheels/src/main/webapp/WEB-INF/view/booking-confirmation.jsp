<%@ taglib prefix = "form"  uri = "http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>

<head>
<title>Booking Confirmation</title>
</head>

<body>

	The Booking is confirmed : ${CustomerBooking.carCategory} ${CustomerBooking.email}
<br><br>

<hr>

<hr>
	
	<a href="${pageContext.request.contextPath}/">Click Here to Book Again</a>

<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>


</body>

</html>