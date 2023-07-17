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
  <script src="<c:url value="/resources/js/todovalidation.js"/>" ></script>
</head>
<body>
 <div class="container my-3">


        <div class="row">
            <div class="col-md-3" > 
            </div>

            <div class="col-md-6 mb-3 box" style=" box-shadow: 7px 12px 8px 5px #cecdcd; background-color:rgb(239, 239, 239);border-radius: 5px;margin-top:20px;">
                <form method="post" action="todoinsert" onsubmit="validate(event)">
          
					<h3>${name}</h3>
	        		<h2 class="text-center my-2" style=color:grey;">ADD TODO ITEM</h2>
             
                    
                    <label  class="form-label">Date</label>
                    <input type="date" class="form-control mb-1" name="date" id="date" required>
                    <label for="" class="text-danger" id="date_error"></label><br>
                    
                   
                    
                    <label  class="form-label">Title</label>
                    <input type="text" class="form-control mb-1" name="title" id="title">
                    <label for="" class="text-danger" id="title_error"></label><br>
                    
                    <label  class="form-label">Description</label>
                    <textarea class="form-control mb-3" name=desc ></textarea>
                    
                    <label  class="form-label">Priority</label><br>
                     <input type="radio"  name="priority" id="priority"  value="Low">Low
                     <input type="radio"  name="priority" id="priority" style="margin-left:20px" value="Medium">Medium
                     <input type="radio"  name="priority" id="priority" style="margin-left:20px" value="High">High<br>
                      <label for="" class="text-danger" id="priority_error"></label>

                    <input type="Submit"  name="submit" value="Add ToDo" class="mb-3 btnn btn-success" style="display: block; margin: auto; padding:5px; border-radius: 5px;">
  
                </form>
                <div class="text-center mb-2">
                </button>
				   <button type="button" class="btn btn-success" >
				     <a href="logout" style=" text-decoration: none;color: white; ">logout</a>
				   </button>
                    <button type="button" class="btn btn-success "  >
     				<a href="showtodos" style=" text-decoration: none;color: white; ">View Todos</a>
  					 </button>
  					 </div>
                </div>
            <div class="col-md-3">

            </div>
            
        </div>
    </div>

</body>
</html>