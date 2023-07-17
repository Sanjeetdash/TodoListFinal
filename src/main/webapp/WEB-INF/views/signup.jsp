<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
  <script src="<c:url value="/resources/js/validation.js"/>" ></script>
</head>
<body>

<input type="hidden" id="status" value="${status}">
 <div class="container my-3">


        <div class="row">
            <div class="col-md-4 " > 
            </div>

            <div class="col-md-4 mb-2 box" style=" box-shadow: 7px 12px 8px 5px #cecdcd; background-color:rgb(239, 239, 239);border-radius: 5px;">
                <form method="post" action="registration" onsubmit="validate(event)">
          

	        		<h2 class="text-center my-2" style=color:grey;"> Sign Up</h2>
                    <label  class="form-label my-1 ">Name</label>
                    <input type="text" class="form-control mb-1"  name="name"  id="name">
                    <label for="" class="text-danger" id="name_error"></label><br>
                    
                    <label  class="form-label">Email</label>
                    <input type="text" class="form-control mb-1" name="email" id="email">
                    <label for="" class="text-danger" id="email_error"></label><br>
                    
                    <label  class="form-label">Mobile</label>
                    <input type="text" class="form-control mb-1" name="mobile" id="mobile">
                    <label for="" class="text-danger" id="mobile_error"></label><br>
                    
                    <label  class="form-label">Password</label>
                    <input type="password" class="form-control mb-1" name="password" id="password">
                    <label for="" class="text-danger" id="password_error"></label><br>
                    
                    <label  class="form-label">Confirm Password</label>
                    <input type="password" class="form-control mb-1" name="password2" id="password2">
                    <label for="" class="text-danger" id="password2_error"></label><br>
                    
                    
                    <input type="Submit"  name="submit" value="Sign Up" class="mb-3 btnn btn-success" style="display: block; margin: auto; padding:5px; border-radius: 5px;">
                </form>
               			<div class="text-center">
		                <p>If you already have an account </p>
		 				 <button type="button" class="btn btn-primary mb-3" >
		  				<a href="login" style=" text-decoration: none;color: white; ">Sign in</a>
		                </button>
		                </div>
                </div>
            <div class="col-md-4">

            </div>
            
        </div>
    </div>
  <script type="text/javascript">
  const status=document.getElementById("status").value
  if(status=="success")
	  {
	  swal("congrats","Account Created Successfully","success")
	  
	  }
  else if(status=="failed")
	  {
	  swal("Sorry","Email already exists, Use another email ","error")
	  }
  
  </script>

</body>
</html>