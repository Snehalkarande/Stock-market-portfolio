<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
  ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #d35537;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 18px 50px;
	text-decoration: none;
}

li a:hover:not(.active)
{
background-color:#111;
}
.active {
	background-color: #4CAF50;
}
  
  
  </style>
</head>
<body background="1.jpg">

<ul>

	<h1 id="textlogo" align="center">Stock-market &nbsp <span>portfolio</span>
</h1>
	
	<li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="news.jsp">News</a></li>
    <li><a href="feedback.jsp">feedback</a></li>
    <li><a href="logout.html">Logout</a></li>


</ul>

<form action="current_market"  >
hello....
<br>
<br>

<table cellpadding="15" border="1" style="background-color: 'wheat' "> 
<th>username</th>
<th>company_name</th>
<th>share_id</th>
<th>date_of_purch</th>
<th>rate_of_share</th>
<th>quantity</th>

<tr>
	<td><%=session.getAttribute("user") %></td>
	<td><%=session.getAttribute("company") %></td>
	<td><%=session.getAttribute("share_id") %> </td>
	<td><%=session.getAttribute("date_of_purch") %> </td>
	<td><%=session.getAttribute("rate_of_share") %> </td>
	<td><%=session.getAttribute("quantity") %> </td>
	
<tr>
<br><br>








<%-- 
<%=session.getAttribute("user") %>
<br>
<%=session.getAttribute("company") %>
<br>
<%=session.getAttribute("share_id") %>
<br>
<%=session.getAttribute("date_of_purch") %>
<br>
<%=session.getAttribute("rate_of_share") %>
<br>
<%=session.getAttribute("quantity") %>
<br>
<%=session.getAttribute("profit") %>
<br>
<%=session.getAttribute("loss") %>
<br>

 --%>


</table><br><br>
show status<input type="submit" value="click">
</form>
</body>
</html>