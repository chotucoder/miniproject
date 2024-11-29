<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="w3.css">
</head>
<body style="background-image: url('pic/watermelon.jpg');">
<h1 style="margin-left: 100px;margin-top: 30px;color: olive;">
On Accelerating Source Code Analysis At Massive Scale</h1>
<center>
<div class="w3-bar w3-green" style="margin-top: 30px;font-size: 20px;">
<div class="w3-button"><a href="index.jsp">Home</a></div>
<div class="w3-button"><a href="manager.jsp">Manager</a></div>
<div class="w3-button"><a href="employee.jsp">Employee</a></div>
<div class="w3-button"><a href="User.jsp">User</a></div>
	<div class="w3-button w3-bar-item" style="width: 25%;"><a href="admin.jsp">Admin</a></div>
</div>

<h3 style="color: red;"> User Registration Page:</h3>
<form action="UserReg" method="post"> 
<table class="w3-table-all  w3-bordered e" style="width: 400px;margin-top: 30px;color: green;">
<tr><td>Name</td><td><input type="text" name="name"></td></tr>
<tr><td>Email</td><td><input type="text" name="uid"></td></tr>
<tr><td>Password</td><td><input type="password" name="pwd"></td></tr>
<tr><td>C-Password</td><td><input type="password" name="cpwd"></td></tr>
<tr><td>Mobile</td><td><input type="text" name="mob"></td></tr>
<tr><td>Address</td><td><input type="text" name="loc"></td></tr>
<tr><td><input type="submit" value="Register" class="w3-button w3-green"></td><td></td></tr>
</table>
</form></center>
</body>
</html>