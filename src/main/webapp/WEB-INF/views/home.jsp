<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body class="bg-dark">

<nav class="navbar navbar-expand-sm bg-light">
   <div class="container-fluid">
    <a class="navbar-brand" href="#" style="font-size:30px;font-weight: bold; color:grey;">TodoList</a>
    </div>
  
        <ul class="navbar-nav ml-auto">
           
            <li class="nav-item">
                <button type="button" class=" btn btn-sm btn-success mb-3 mr-3 px-4 py-2" style="border-radius:12px;" >
		  				<a href="signup" style=" text-decoration: none;color: white; font-size:17px; border-radius:5px;">Signup</a>
		         </button>
            </li>
            <li class="nav-item ">
                <button type="button" class=" btn btn-sm btn-primary mb-3 mr-5 px-4 py-2" style="border-radius:12px;" >
		  				<a href="login" style=" text-decoration: none;color: white; font-size:17px;  ">Signin</a>
		        </button>
            </li>
        </ul>
    </nav>
    <div class="text-center my-2">
    <h2 class="text-light">WELCOME TO OUR WEBSITE</h2>
    <img alt="my image" src="<c:url value="/resources/images/pic2.jpg" />" style="width:63%; height:560px">
    
    </div>

</body>
</html>