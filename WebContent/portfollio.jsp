<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
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
<form action="disp_portfollio.html">
<center><input type="text" id="user" name="user" required="required" placeholder="name" >
<br>
<br>
<input type="text" id="company" name="company" required="required" placeholder="company">
<br>
<br>
<input placeholder="share_id" type="text" name="share_id" required="required">
<br>
<br>
<input type="text"  name="date_of_purch"  placeholder="date dd/mm/yyyy format" pattern="(0[1-9]|1[0-9]|2[0-9]|3[]01)/(0[1-9]|1[012])/[0-9]{4}" required="required">
<br>
<br>
<input placeholder="rate_of_share" type="text" name="rate_of_share" required="required">
<br>
<br>
<input type="text" placeholder="quantity" name="quantity" required="required">
<br>
<br>

<input type="submit" value="Add portfollio">
</center>
</form>
</body>
</html>