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
<div class="w3-button"><a href="ManagerHome.jsp">Home</a></div>
<div class="w3-button"><a href="postQ.jsp">Post Question</a></div>
<div class="w3-button"><a href="ViewSource.jsp">View Source Code</a></div>
<div class="w3-button"><a href="Message.jsp">Message</a></div>
<div class="w3-button"><a href="logout.jsp">Logout</a></div>
</div>
 
  <div style="width: 850px; margin-top: 40px;">
 <form action="Upload" method="post">
 <table class="w3-table">
 <tr><th>Language</th><th>Question</th><th>Upload</th></tr>
 <tr><td><select name="branch" class="w3-select">
					<option>------Select------</option>
							<option value="JAVA">JAVA</option>
							<option value="C++">C++</option>
							<option value="C">C</option>
							<option value="HTML">HTML</option>
							<option value=".NET">.NET</option>
							<option value="JAVASCRIPT">JAVA SCRIPT</option>
					</select></td>
 <td><input type="text" name="qun" class="w3-input"></td>
 <td><input type="submit" value="Upload" class="w3-button w3-white"></td></tr>
 </table>
 </form>
 </div>
</center>
</body>
</html>