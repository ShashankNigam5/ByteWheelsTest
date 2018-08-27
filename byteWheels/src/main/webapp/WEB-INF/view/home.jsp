<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>ByteWheels Company Home Page</title>
	
	 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css" rel="stylesheet">  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
    
    
</head>

<body>
	<div class ="container">
	<h2>ByteWheels Company Home Page</h2> 
	<p>
		User: <security:authentication property="principal.username" />
		
		
	</p>
	<hr>
	
	<p>
	Welcome to the ByteWheels company home page!
	</p>
	
	<hr>
	
	<form:form action="${pageContext.request.contextPath}/searchAvailableCars" 
						  method="POST" class="form-horizontal" modelAttribute="SearchDeatils">
	<div class="row">
	<div class="input-group">
	<div class= "col-sm-4 ">					  
	<input  class="form-control" type="text" path="bookedFrom" placeholder="start date" name="bookedFrom1"  id="startDate1" required="true"/>
       
        <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#startDate1').datepicker({
                	autoclose: true,
                    format: "dd/mm/yyyy"
                });  
            
            });
        </script>
        
        </div>
        
        <div class="col-sm-4">					  
	<input  class="form-control" type="text" placeholder="end date" name="bookedTo1" path="bookedTo" id="endDate1" required/>
       
        <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#endDate1').datepicker({
                	autoclose: true,
                    format: "dd/mm/yyyy"
                });  
            
            });
        </script>
        
        </div>
     </div>
     </div>
     <br><br>
     <!-- 
     <select path ="carCategory" name = "carCategories">
     <option value="Compact" label="Compact"/>
     <option value="Full" label="Full"/>
     <option value="Large" label="Large"/>
     <option value="Luxury" label="Luxury"/>
     </select>
     -->
     
     <select name="carCategories" path ="carCategory" required>      
		<option>Compact</option>      
		<option>Full</option>      
		<option>Large</option>  
		<option>Luxury </option>
	</select> 
     
     <br><br>
     <input type="submit" value = "search"/>
     
	</form:form>
	
	
	
	
	
	
	<hr>
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>
	</div>
</body>

</html>









