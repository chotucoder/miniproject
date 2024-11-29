			
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
			<%@page import="dao.Dao"%>
			<%@page import="java.sql.Connection"%>
			<%@page import="java.sql.Statement"%>
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
			
			<br>
			<table class="w3-table-all  w3-bordered" border="1">
			<tr>
				<th>User Id</th>
				<th>Question</th>
				<th>Email</th>
				<th>Source Code</th>
				<th>Date</th>
				<th>File Name</th>
				<th>Send to Expert</th>
				<th>Send to Manager</th>
				</tr>
			<%
			ArrayList al=new ArrayList();
			String sql ="select * from expert";
			Connection con=Dao.connect();
			try{
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				al.add(rs.getString(1));
			}
			
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
			
			//System.out.println(n);
			for(int i=0;i<al.size();i++){
				String sql1="select * from upload ";
				ResultSet rs1 = Dao.getData(sql1);
				while (rs1.next()){
					System.out.println("hellllllllllllll");	
			%>
			
			<tr>
			<td><%=rs1.getString(1) %></td>
			<td><%=rs1.getString(2) %></td>
			<td><%=rs1.getString(3) %></td>
			<td><textarea rows="10" cols="50">
			 <%=rs1.getString(4) %>
			</textarea></td>
			<td><%=rs1.getString(5) %></td>
			<td><%=rs1.getString(6) %></td>
			<td><a href="Compile.jsp?id=<%=rs1.getString(1) %>&&fname=<%=rs1.getString(6) %>">Verify Code</a></td>
			<td><a href="feedBack.jsp?id=<%=rs1.getString(1) %>&&fname=<%=rs1.getString(6) %>">Send Code To Manager</a></td>
			</tr>
			<%	
			}
			}
			%>
			
			</table>
			</center>
			</body>
			</html>
		