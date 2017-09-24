<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Login form using HTML5 and CSS3</title>
  
  
  
      <link rel="stylesheet" href="css/style.css">
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

<body>
  <body>
  
  <ul>

	<h1 id="textlogo" align="center">Stock-market &nbsp <span>portfolio</span>
</h1>
	<li><a href="Login.jsp">login</a></li>
	<li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="news.jsp">News</a></li>
    <li><a href="feedback.jsp">feedback</a></li>


</ul>
  
  
<div class="container">
	<section id="content">
		<form action="log.html">
			<h1>Login Form</h1>
			<div>
				<input type="text" name="email" placeholder="Enter email id" required="" id="email" />
			</div>

			<div>
				<input type="password" name="pass" placeholder="Password" required="" id="pass" />
			</div>

			<div>
				<input type="submit" value="Log in" />
				<a href="ForgetPass.jsp">Forget your password?</a>
				<a href="Register.jsp">Register</a>
			</div>

		</form><!-- form -->

		<a href="main_page.jsp">main_page</a>

	</section><!-- content -->
</div><!-- container -->
</body>
  
    <script src="js/index.js"></script>

</body>
</html>
