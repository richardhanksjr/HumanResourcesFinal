<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Add New Employee</title>
</head>
<body>
<div class = "jombotron">
	<div class = "container text-center container-top">
		<div class = row><h1>Add Employee</h1></div>
		<hr>
	</div>
</div>
<div class = "container">
	<form:form action = "AddEmployee.do" modelAttribute = "employee">
		<%-- <form:input path = "FirstName"/> --%>
		
	 	<form:input path = "FirstName" type = "text"  value = "" id = "firstname" placeholder = "First Name"/><br>
	 	<form:errors path = "FirstName"/>
	 	<label for = "lastname">Last Name</label>
		 <form:input type = "text" path = "LastName" id = "lastname" placeholder = "Last Name" value = ""/><br>
		 <label for = "middlename">Middle Name</label>
		<input type = "text" name = "MiddleName" id = "middlename" placeholder = "Middle Name" value = ""/><br>
		<label for = "male">Male</label>
		<input type="radio" name="Gender" value="M" id="male">
		<label for = "female">Female</label>
		 
	  <input type="radio" name="Gender" value="F" id = "female"><br>
	  <label for = "email">Email</label>
	  <input type = "email" name ="email" id = "email" placeholder = "Enter Email"><br>
	  <label for = "salary">Salary</label>
	  <form:input type="number" path="Salary" min="0" max="1000000" step = "5000" id = "salary" placeholder = "Salary"/>
	  <label for = "commision">Commission Percentage</label>
	  <input type = "number" name = "Commission" min = "0" max = "100" step = "1" id = "commission" ><br>
	  <label for ="hire">Hire Date</label>
	 <%--  <jsp:useBean id ="now" class ="java.util.Date"/>
	  <fmt:formatDate value = "${now}" type ="both" pattern = "yyyy-MM-dd"/> --%>
	 <form:input type ="date" path = "HireDate" id = "hire" placeholder = "Hire Date" value = ""/><br>
	 <label for = "department">Department ID</label>
	  <form:select path="department_id" id = "department">
	    <option value="1">Research</option>
	    <option value="2">Administration</option>
	    <option value="3">Software Development</option>
	    <option value="4">Hardware Development</option>
	    <option value="5">Test And Integration</option>
	    <option value="6">Sales</option>
	    <option value="7">HR</option>
	    <option value="8">Facilities</option>
	    <option value="9">Operations</option>
	    <option value="10">Documentation</option>
	  </form:select>
	  <label for = "job">Job ID</label>
	   <form:select path="job_id" id = "job">
	    <option value="1">President</option>
	    <option value="2">Vice President</option>
	    <option value="3">Director</option>
	    <option value="4">Manager</option>
	    <option value="5">Supervisor</option>
	    <option value="6">Administrative Assistant</option>
	    <option value="7">Secretary</option>
	    <option value="8">Lead Engineer</option>
	    <option value="9">Engineer</option>
	    <option value="10">Junior Administrator</option>
	     <option value="11">DataBase Administrator</option>
	    <option value="12">DataBase Operator</option>
	    <option value="13">Systems Administrator</option>
	    <option value="14">Systems Operator</option>
	    <option value="15">Data Analyst</option>
	    <option value="16">Project Lead</option>
	    <option value="17">Senior Developer</option>
	    <option value="18">Developer</option>
	    <option value="19">Junior Developer</option>
	    <option value="20">Product Evangelist</option>
	    <option value="21">Senior Sales Rep</option>
	    <option value="22">Account Rep</option>
	    <option value="23">Sales Rep</option>
	    <option value="24">Tester</option>
	    <option value="25">Receptionist</option>
	    <option value="26">Data Entry Clerk</option>
	    <option value="27">Technical Writer</option>
	    <option value="28">Trainer</option>
	    <option value="29">COO</option>
	    <option value="30">CFO</option>
	  </form:select><br>
	  <label for = "address">Street Address</label>
	  <input type = "text" name = "address" id = "address" placeholder = "Street">
	  <label for="city">City</label>
	  <input type = "text" name = "City" id = "city" placeholder = "City"><br>
	  <label for = "state">State</label>
	   <select name="state" id = "state">
	    <option value="AL">AL</option>
	    <option value="AK">AK</option>
	    <option value="AR">AR</option>
	    <option value="CA">CA</option>
	    <option value="CO">CO</option>
	    <option value="CT">CT</option>
	    <option value="DE">DE</option>
	    <option value="FL">FL</option>
	    <option value="GA">GA</option>
	    <option value="HI">HI</option>
	     <option value="ID">ID</option>
	    <option value="IL">IL</option>
	    <option value="IN">IN</option>
	    <option value="IA">IA</option>
	    <option value="KS">KS</option>
	    <option value="KY">KY</option>
	    <option value="LA">LA</option>
	    <option value="ME">ME</option>
	    <option value="MD">MD</option>
	    <option value="MA">MA</option>
	    <option value="MI">MI</option>
	    <option value="MN">MN</option>
	    <option value="MS">MS</option>
	    <option value="MO">MO</option>
	    <option value="MT">MT</option>
	    <option value="NE">NE</option>
	    <option value="NV">NV</option>
	    <option value="NH">NH</option>
	    <option value="NJ">NJ</option>
	    <option value="NM">NM</option>
	    <option value="NY">NY</option>
	    <option value="NC">NC</option>
	    <option value="ND">ND</option>
	     <option value="OH">OH</option>
	    <option value="OK">OK</option>
	    <option value="OR">OR</option>
	    <option value="PA">PA</option>
	    <option value="RI">RI</option>
	    <option value="SC">SC</option>
	    <option value="SD">SD</option>
	    <option value="TN">TN</option>
	    <option value="TX">TX</option>
	    <option value="UT">UT</option>
	    <option value="VT">VT</option>
	    <option value="VA">VA</option>
	    <option value="WA">WA</option>
	    <option value="WV">WV</option>
	    <option value="WI">WI</option>
	    <option value="WY">WY</option>
	    <option value="GU">GU</option>
	    <option value="PR">PR</option>
	    <option value="VI">VI</option>
	   </select>
	   <label for = "zip">Zip</label>
	   <input type="text" name="zip" maxlength="5" size="5" id = "zip" placeholder = "zip"><br> 
	   
		<button type = "submit"  class = "btn btn-default" name = "GetById" value = "Add Employee">Add Employee</button>
	</form:form>
	<form action = "index.jsp">
		<button type = "submit" class = "btn btn-default" value = "Cancel">Cancel</button>
	</form>
</div>
</body>
</html>