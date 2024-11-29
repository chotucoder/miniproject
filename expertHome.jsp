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
<div class="w3-button"><a href="expertHome.jsp">Home</a></div>
<div class="w3-button"><a href="ExpertCode.jsp">View Code</a></div>

<div class="w3-button"><a href="logout.jsp">Logout</a></div>
</div>
<%-- <table class="w3-table-all  w3-bordered" border="1">
<tr>
<th>Uid</th>
<th>Content</th>
<th>File Name</th>
<th>Status</th>
</tr>
<%
/* session=request.getSession(false);  
String n=(String)session.getAttribute("uid"); */
String sql ="select * from expert";
//System.out.println(n);
ResultSet rs = Dao.getContent(sql);
while (rs.next()){
	String uid=rs.getString(1);
String	code=rs.getString(2);
String status=rs.getString(3);
String fname=rs.getString(4);
%>

<tr>
<td><%=uid %></td>
<td><textarea rows="10" cols="50">
 <%=rs.getString(2) %>
</textarea></td>
<td><%=rs.getString(4) %></td>
<td><a href="Compile.jsp?code=<%=rs.getString(2) %>&&fname=<%=rs.getString(4) %>">Verify Code</a></td>
</tr>
<%	

}
%>

</table>
</center> --%>
</body>
</html>