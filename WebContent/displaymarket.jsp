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
	padding: 18px 40px;
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
welcome

<ul>

	<h1 id="textlogo" align="center">Stock-market &nbsp <span>portfolio</span>
</h1>
	<li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="news.jsp">News</a></li>
    <li><a href="feedback.jsp">feedback</a></li>
    <li><a href="logout.html">Logout</a></li>


</ul>


<table cellpadding="15" border="1" style="background-color: 'wheat' "> 

<h1>Market Info</h1>

<th>company_name</th>
<th>share_id</th>
<th>share_rate</th>
<th>share_quqntity</th>


 <%

String s = session.getAttribute("size").toString();
int i=Integer.parseInt(s);

for(int j=1;j<=i;j++){


%> 
<tr>

	<td><%=session.getAttribute("company_name"+j) %></td>
	<td><%=session.getAttribute("share_id"+j) %></td>
	
	
	<td><%=session.getAttribute("share_rate"+j) %> </td>
	<td><%=session.getAttribute("share_quqntity"+j) %> </td>
	
	
</tr>
 <%} %> 
 <form action="adminnext.jsp">
<input type="submit" value="Back">
</form>

</body>
</html>