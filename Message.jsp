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
<br><br>
<table class="w3-table-all  w3-bordered" border="1">
<tr>
<th>User Id</th>
<th>Date</th>
<th>Status</th>
</tr>

<%
 String filename=null;
String sql ="select * from feedback";

ResultSet rs = Dao.getData(sql);
while(rs.next()){
%>
 <tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td> <%=rs.getString(3) %></td>


<%
}
%>
</table>
</center>

</body>
</html>