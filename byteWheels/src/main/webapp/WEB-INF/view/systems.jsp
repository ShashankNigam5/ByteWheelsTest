<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>ByteWheels Search Page</title>
</head>

<body>

<div class ="container">
	<h2>ByteWheels Company Search Page</h2> 
	<p>
		User: <security:authentication property="principal.username" />
		
		
	</p>
	<hr>
<h2>Search Result</h2>

<hr>

<p>
	<table>
			  <tr>
			  	<th> Car ID </th>			  	
			  	<th> Car Name </th>			  	
			  	<th> Car Category </th>
			  	<th> Amount </th>
			  	<th> Start Date </th>
			  	<th> End Date </th>
			  	<th> Action <th>
			  </tr>
			
			<c:forEach var="tempAvailCar" items="${availableCars}">
				
				<c:url var="bookingLink" value="showFormForBook">
					<c:param name="carCategory" value="${tempAvailCar.carCategory}" />
				</c:url>
				
			      <tr>
			  		<td> ${tempAvailCar.uniqueCarID} </td>			  	
			  		<td> ${tempAvailCar.carName} </td>			  	
			  		<td> ${tempAvailCar.carCategory} </td>
			  		<td> ${tempAvailCar.rate}</td>
			  		<td> ${param.bookedFrom1} </td>
			  		<td> ${param.bookedTo1} </td>
			  		
			  		<td>
			  			<!-- display the update link -->
			  			<a href="${bookingLink}"
			  			
			  			   onclick="if (!(confirm('Are you sure you want to book this Car?'))) return false">Book</a>
			  	  </tr>
			
			</c:forEach>
			</table>
</p>

<hr>

<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
<hr>

<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
</div>
</body>

</html>









