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
<title>Delete Employee</title>
</head>
<body>
	<div class = "container text-center">
	<hr>
	
		
		<form action = "DeleteEmployee.do">
			<label for = "id">Choose Employee ID of Employee to Delete</label>
			<select name = "id" id = "id">
			<c:forEach items = "${ids}" var = "id">
				<option value = "${id}">${id}</option>
			</c:forEach>
		</select>
			
			<!-- <input type = "text" name = "id" id = "delete" placeholder = "Enter Employee ID"> -->
			<button  class = "btn btn-danger" onclick = "verifyFunction()" type = "submit" value = "Delete Employee">Delete Employee</button>
		
		<script>
	
</script>
</form>
	<form action = "index.jsp">
		<button class = "btn btn-default" type = "submit">Cancel</button>
	</form>
</div>
</body>
</html>


