<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
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
  <script src="js/j_main__script.js"></script>
<title>Insert title here</title>

</head>
<body>
<h1> JAVA COMPILER</h1>
<button onclick="compile()">COMPILE</button>
<button onclick="run()">RUN</button>
<button onclick="empty()">CLEAR</button>

<br>

<%
			/* session=request.getSession(false);  
			String n=(String)session.getAttribute("uid"); */
			String uid=request.getParameter("id");
			String fname=request.getParameter("fname");
			System.out.println(uid+fname);
			String sql ="select * from upload where userid=? and fname1=?";
			Connection con=Dao.connect();
			PreparedStatement ps= con.prepareStatement(sql);
			ps.setString(1, uid);
			ps.setString(2, fname);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
			
				
			
			
			%>
				<tr>
				<%-- <td><%=uid %></td> --%>
				<td><textarea rows="25" cols="120" id="maincode" name="fname">
				<%
				
				String filename=rs.getString(5);
				System.out.println(filename+"hhhhhhhhhhhhhhhhhhh");
				List<String> lines = FileUtils.readLines(new File("E:\\2018_MAJOR_projects\\MJNS10_2024\\WebContent\\Files\\"+fname), "UTF-8");

				    for (String line : lines) {
				        out.println(line);
				    }
				
				
				%>
				
				
				
				
				</textarea></td>
				<%-- <td><%=rs.getString(5) %></td> --%>
				<%
				String filetxt=rs.getString(5);//test.txt.txt.txt
				System.out.println("split the test: "+fname);
			//	String s[]=filetxt.split('.');// s[]0=test // s[1]=txt  //s[2]
						StringTokenizer st=new StringTokenizer(fname,".");
				
			if(st.hasMoreTokens()){
				fname=st.nextToken();
				
				}					
				
				%>
				 <td>Class Name : <input type="text" id=class  value="<%=fname%>"></td>
				</tr>
				<%} %>
			<!-- 	out.println(code);
				}
			
			
			//System.out.println(n);
			ResultSet rs = Dao.getContent(sql);
			while (rs.next()){
				String uid=rs.getString(1);
			String	code=rs.getString(2);
			String status=rs.getString(3);
			String fname=rs.getString(4);
			%> -->
			
			


<br><br>
<textarea rows="25" cols="120" id="output" name="output"></textarea>
</body>
</html>

