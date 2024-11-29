<%@page import="dao.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.File" %>
<%@page import="java.util.List" %>

<%@page import="org.apache.commons.io.FileUtils" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="css/style1.css" />

</head>
<body style="background-image: url('pic/watermelon.jpg');">
<h1 style="margin-left: 100px;margin-top: 30px;color: olive;">
On Accelerating Source Code Analysis At Massive Scale</h1>
<center>
<div class="w3-bar w3-green" style="margin-top: 30px;font-size: 20px;">
<div class="w3-button"><a href="ManagerHome.jsp">Home</a></div>
<div class="w3-button"><a href="postQ.jsp">Post Question</a></div>
<div class="w3-button"><a href="ViewSource.jsp">View Source Code</a></div>
<div class="w3-button"><a href="Message.jsp">Message</a></div>
<div class="w3-button"><a href="logout.jsp">Logout</a></div>
</div>

<table class="w3-table-all  w3-bordered" border="1">
<tr>
<th>User Id</th>
<th>Question</th>
<th>Email</th>
<th>Source Code</th>
<th>Date</th>
<th>File Name</th>
<th>Send to Expert</th>
</tr>

<%

 String filename=null;
String sql ="select * from upload";
ResultSet rs = Dao.getData(sql);
if(rs==null){
System.out.println("result set is null");
}else{
while(rs.next()){
	String id =rs.getString(1);
	String code1 =rs.getString(3);
	String date =rs.getString(4);
	String fname =rs.getString(5);
	String filepath=rs.getString(6);
%>
 <tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<% System.out.println(rs.getString(1));%>
<td> <%=rs.getString(3) %></td>
<td><textarea rows="10" cols="40">
<%=rs.getString(4) %>
</textarea></td>
<td> <%=rs.getString(5) %></td>
<td> <%=rs.getString(6) %></td>
 <td>
 <form action="ExpertCode" method="get">
 <input type="hidden" name="id" value=<%=rs.getString(1) %>>
 <input type="submit" value="Send for Verification" class="w3-button w3-orange"/>
 </form>
<%
}}
%>
</table>


</center>
</body>
</html>