<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
 <div class="w3-button"><a href="Expert.jsp">Expert</a></div>
</div>
<h3 style="color: red;">Welcome To Expert Login Page:</h3>
   <form action="Expert" method="post">
   <table class="w3-table-all  w3-bordered " style="width: 400px;">
   <tr class="w3-text-blue "><td>UserID</td><td><input type="text" name="uid"></td></tr>
   <tr class="w3-text-blue "><td>Password</td><td> <input type="password" name="pwd"></td></tr>
   <tr><td></td><td><input type="submit" value="Login" class="w3-button w3-green"></td>
   </tr>
   </table>
   </form>
</center>
</body>
</html>