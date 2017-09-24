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
	<li><a href="Login.jsp">login</a></li>
	<li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="news.jsp">News</a></li>
    <li><a href="feedback.jsp">feedback</a></li>


</ul>
<form action="welcome.jsp">
<center><button><a href="adminlogin.jsp" >Admin</a></button><br><br>
<button><a href="Login.jsp">User</a></button></center>
</form>


</body>
</html>