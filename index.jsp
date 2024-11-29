<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
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
<p style="text-align: justify;font-size: 13px;margin: 80px 10px 10px 10px ;color: blue;font-size-adjust: inherit;">
Abstract-Encouraged by the success of data-driven software engineering (SE) techniques that have found numerous applications
e.g. in defect prediction, specification inference, the demand for mining and analyzing source code repositories at scale has
significantly increased. However, analyzing source code at scale remains expensive to the extent that data-driven solutions to certain
SE problems are beyond our reach today. Extant techniques have focused on leveraging distributed computing to solve this problem,
but with a concomitant increase in computational resource needs. This work proposes a technique that reduces the amount of
computation performed by the ultra-large-scale source code mining task, especially those that make use of control and data flow
analyses. Our key idea is to analyze the mining task to identify and remove the irrelevant portions of the source code, prior to running
the mining task. We show a realization of our insight for mining and analyzing massive collections of control flow graphs of source
codes. Our evaluation using 16 classical control-/data-flow analyses that are typical components of mining tasks and 7 Million CFGs
shows that our technique can achieve on average a 40% reduction in the task computation time. Our case studies demonstrates the
applicability of our technique to massive scale source code mining tasks.</p>
</center>
</body>
</html>