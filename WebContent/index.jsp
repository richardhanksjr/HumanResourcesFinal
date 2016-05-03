<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Insert title here</title>
</head>
<body>
<div class = "jombotron">
	<div class = "container text-center container-top">
		<div class = row><h1>Human Resources Console</h1></div>
		<hr>
		
	</div>
</div>
<div class = "container ">
	
	
	<table class = "table table-hover">
	<thead class = "text-center">
		<tr>
			<th>${firstNameHeader}</th>
			<th>${lastNameHeader}</th>
			<th>${_id}</th>
			<th>${depart_ID}</th>
			<th>${job_ID}</th>
		<tr>
	</thead>
	<tbody>

				<c:forEach items ="${employeeList}" var = "item">
					<tr>
					<td>${item.firstName}</td>
					<td>${item.lastName}</td>
					<td>${item.id}</td>
					<td>${item.department_id}</td>
					<td>${item.job_id}</td>
					</tr>
				</c:forEach>
	
				<%-- <c:forEach items ="${employeeList}" var = "item">
					<tr>
					
					</tr>
				</c:forEach> --%>

	</tbody>
	</table>
	<hr>
<div class = "row text-center .m-t-2">
	<div class = "col-sm-3">
		<p><a href = "loadDeletePage.do"><strong>Delete Employee</strong></a></p><br>
		<a href = "loadDeletePage.do"><img class = "img-rounded person" src = "images/delete.png"></a>
		<!-- <form action = "deleteEmployee.jsp">
			<input type = "submit" value = "Delete Employee">
		</form> -->
	</div>
	<div class = "col-sm-3">
		<!-- <form action="addEmployee.jsp">
		    <input type="submit" value="Add New Employee">
		</form> -->
		<p><a href = "AddEmployee.do"><strong>Add Employee</strong></a></p><br>
		<a href = "AddEmployee.do"><img class = " img-rounded person" src = "images/add.png"></a>
	</div>
	<div class = "col-sm-3">
		<form action = "loadUpdatePage.do">
		<p><a href = "loadUpdatePage.do"><strong>Update Employee</strong></a></p><br>
			<input class = "img-rounded person" type = "image"  src = "images/update.png" value = "">
		</form>
	</div>
	<div class = "col-sm-3">
	<p><a href = "searchEmployee.jsp"><strong>Search Employees</strong></a></p><br>
		<a href = "searchEmployee.jsp"><img class = "img-rounded person" src = "images/search.png"></a>
	</div>
</div>

</div>
<footer class = "container=fluid b-4 text-center">
	<div class = "row">
	<form action = "about.html">
		<button class = "btn btn-default" type = "submit">About</button>
	</form>
	<form action = "grade.html">
		<button class = "btn btn-default" type = "submit">Grade</button>
	</form>
	</div>
</footer>
</body>
</html>