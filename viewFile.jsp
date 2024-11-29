<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
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
<div class="w3-button"><a href="UserHome.jsp">Home</a></div>
<div class="w3-button"><a href="upload.jsp">Upload File</a></div>
<div class="w3-button"><a href="viewFile.jsp">View Files </a></div>
<div class="w3-button"><a href="logout.jsp">Logout</a></div>
</div>
<br><br>
<table class="w3-table  w3-bordered" border="1">
<tr>
<th>User Id</th>
<th>Source Code</th>

</tr>

<%
session=request.getSession(false);  
String n=(String)session.getAttribute("uid");  
 String filename=null;
String sql ="select * from upload where uid='"+n+"'";
ResultSet rs = Dao.getData(sql);
if(rs==null){
System.out.println("result set is null");
}else{
while(rs.next()){
	
%>
 <tr>
<td><%=rs.getString(1) %></td>
<% System.out.println(rs.getString(1));%>
<td><textarea rows="10" cols="80">
<%=rs.getString(4) %>
</textarea></td>

<%
}}
%>
</table></center>
</body>
</html>