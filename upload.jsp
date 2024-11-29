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
<h3>File Upload:</h3>

      <form action = "EmpUpload" method = "post" enctype = "multipart/form-data">
      <%
      String sql ="select * from qusupload";
      /* System.out.println(sql+" hi"+uid); */
      ResultSet rs = Dao.getData(sql);
     %>
     <center>
        <select>
        <option>Select Question...</option>
        <%  while(rs.next()){
        	String question =rs.getString(3);
        	 session=request.getSession();  
            session.setAttribute("question",question); 
        	%>
            <option><%= rs.getString(3)%></option>
        <%
        } %>
        </select>
</center>
<br>
 <table>
 <tr><td><input type="text"  name = "fname1" size = "50"  /></td>
      <tr><td><input type = "file" name = "file" size = "50" /></td>
   <td> <input type = "submit" value = "Upload File" /></td></tr>

      </table>
      </form>  
      </center>
</body>
</html>