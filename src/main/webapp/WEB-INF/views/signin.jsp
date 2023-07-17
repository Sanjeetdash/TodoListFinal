<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <script src="<c:url value="/resources/js/loginvalidation.js"/>" ></script>
</head>
<body >
<input type="hidden" id="status" value="${status}">
 <div class="container my-3">


        <div class="row">
            <div class="col-md-4 " > 
            </div>

            <div class="col-md-4 mb-3 box my-5" style=" box-shadow: 7px 12px 8px 5px #cecdcd; background-color:rgb(239, 239, 239);border-radius: 5px;">
                <form method="post" action="signin" onsubmit="validate(event)" >
          

	        		<h2 class="text-center my-2" style=color:grey;">Sign in</h2>
             
                    
                    <label  class="form-label">Email</label>
                    <input type="text" class="form-control mb-1" name="email" id="email">
                    <label for="" class="text-danger" id="email_error"></label><br>
                    
                   
                    
                    <label  class="form-label">Password</label>
                    <input type="password" class="form-control mb-1" name="password" id="password">
                    <label for="" class="text-danger" id="password_error"></label><br>
                    
                    
                    
                    
                    <input type="Submit"  name="submit" value="Log in" class="mb-3 btnn btn-primary" style="display: block; margin: auto; padding:5px; border-radius: 5px;">
                </form>
		                <div class="text-center">
		                <p>If you don't have an account </p>
		 				 <button type="button" class="btn btn-secondary mb-3" >
		  				<a href="signup" style=" text-decoration: none;color: white; ">Click Here</a>
		                </button>
		                </div>
                </div>
            <div class="col-md-4">

            </div>
            
        </div>
    </div>
    
<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="error"){
		swal("Invalid","Invalid password","error");
	}

</script>
</body>
</html>