<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Search for Employees</title>
</head>
<body>
	<div class = "container text-center">
	<hr>
	<form action = "GetEmployeeById.do" method = "GET">
		<!-- <label for = "id">ID</label> -->
		<input type = "text" name = "id" value = "" id = "id" placeholder = "Enter ID"/>
		<button class = "btn btn-default" type = "submit" name = "GetById" value = "">Search by ID</button>
	</form>
	<form action = "GetEmployeeByLastName.do" method = "GET">
		<!-- <label for = "lastname">Search by Last Name</label> -->
		<input type = "text" name = "id" value = "" id = "lastname" placeholder = "Search by Last Name"/>
		<button class = "btn btn-default" type = "submit" name = "GetByLastName" value = "">Search by Last Name</button>
	</form>
	<form action = "index.jsp">
		<button class = "btn btn-default" type = "submit">Cancel</button>
	</form>
	</div>
</body>
</html>