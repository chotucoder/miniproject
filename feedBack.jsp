<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="w3.css">
</head>
<body style="background-image: url('pic/watermelon.jpg');">
<h1 style="margin-left: 100px;margin-top: 30px;color: olive;">
On Accelerating Source Code Analysis At Massive Scale</h1>
<%
String ssid = request.getParameter("id");
String filename = request.getParameter("fname");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MJNS10_2024", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into feedback(userid,filename,status)values('"+ssid+"','"+filename+"','Accepted')");
out.println("<h2>Code sended to Manager successfully... !</h2>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>