<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>
	Save Booking Details
	</title>
	
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
	
</head>

<body>
	
	<div class ="container">
	<h2>ByteWheels Company Booking Page</h2> 
	<p>
		User: <security:authentication property="principal.username" />
		
		
	</p>
	<hr>
	<h2>Select your Car!!!!</h2>
	
	
	
	<form:form action="saveCustomerBooking" modelAttribute="CustomerBooking" method="POST">
	
		<!-- need to associate this data with customer id -->
		
		<table>
			<tbody>
				<tr>
					<td><label>User Name:</label></td>
					<td><form:input path="userName" /></td>	
					
		
				</tr>
				<br>
				<tr>
					<td><label>Email: </label></td>
					<td><form:input path="email" /></td>	
				</tr>
				
				<tr>
					<td><label>Car Category: </label></td>
					<td><form:input path="carCategory" /></td>	
		
				</tr>
				
				<tr>
					<td><label>Start Date: </label></td>
					<td>${SearchDeatils.bookedFrom} </td>	
		
				</tr>
				
				<tr>
					<td><label>End Date: </label></td>
					<td>${SearchDeatils.bookedTo} </td>	
		
				</tr>
				
				<tr>
					<td><label>Total Amount:</label></td>
					<td><form:input path="total_amount" /></td>	
		
				</tr>
				<br>
				<tr>
					<td><label></label></td>
					<td><input type="submit"  value = "Confirm booking"/></td>	
		
				</tr>
				<br>
			</tbody>
		</table>
		
	</form:form>
	
	<a href="${pageContext.request.contextPath}/">Back to Home Page</a>

</body>

<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
</div>
</body>
</html>

