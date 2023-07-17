<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page isELIgnored="false" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<h2 class="text-center">Welcome ,${name}</h2>

<table class="table mx-auto my-5" style="width:700px;">
  <thead class="thead-light">
    <tr>
      
      <th class="text-center" scope="col">Title</th>
      <th class="text-center" scope="col">Date</th>
      <th class="text-center" scope="col">Description</th>
      <th class="text-center" scope="col">Priority</th>
      <th class="text-center" scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${Alltododata}" var="data">
    <tr>
     
      <td class="text-center">${data.title}</td>
      <td class="text-center">${data.date}</td>
      <td class="text-center">${data.desc}</td>
      <td class="text-center">${data.priority}</td>
      <td class="text-center"><a href="tododelete/${data.id}" style="color:red;"><i class="fa-solid fa-trash"></i></a>
      						  <a href="todoupdate/${data.id}"><i class="fa-solid fa-pen-to-square"></i></a>
      </td>
    </tr>
  
  </c:forEach>
  </tbody>
 
</table>
<div class="text-center">
  <button type="button" class="btn btn-success" >
  <a href="todoadd" style=" text-decoration: none;color: white; ">ADD</a>

  </button>
   <button type="button" class="btn btn-success" >
     <a href="logout" style=" text-decoration: none;color: white; ">logout</a>
   </button>
  
  
</div>
</body>
</html>