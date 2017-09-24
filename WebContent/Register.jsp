<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<!-- <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="aqua">

  <form action="reg.html">
  
     
     	<h1><b>REGISTRATION PAGE</b></h1><br>
     	
     	
        <input type="text" name="name" placeholder="Enter firstname" required="required"/><br><br>
       
        <input type="text" name="lname" placeholder="Enter lastname" required="required"/><br><br>

        <input type="email" name="email" placeholder="Enter email " required="required"/><br><br>
        
        <input type="number" name="mob" placeholder="Enter mobile no"  required="required" min="10"/><br><br>
        
        <input type="password" name="pass" placeholder="Password" 
        required="required" title="must contain at 1 number 1uppercase and 1lowercase and at 6 or more characters"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"><br><br>
        
        <input type="text" name="city" placeholder="City" required="required"/><br><br>
        
        <input type="submit" value="Register">
   
  </form>

</body>
</html> -->
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
	padding: 14px 50px;
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
		<form action="reg.html">
			<h1>REGISTRATION PAGE</h1>
			<div>
				<input type="text" name="name" placeholder="Enter firstname" required="required"/><br><br>
       
			</div>
			
			<div>
				 <input type="text" name="lname" placeholder="Enter lastname" required="required"/><br><br>
			</div>

			<div>
				<input type="password" name="pass" placeholder="Password" 
        required="required" title="must contain at 1 number 1uppercase and 1lowercase and at 6 or more characters"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"><br><br>
			</div>
			
			<div>
				 <input type="text" name="email" placeholder="Enter email " required="required"/><br><br>
			</div>
			<div>
				<input type="text" name="mob" placeholder="Enter mobile no"  required="required" min="10"/><br><br>
			</div>
			
			<div>
				        <input type="text" name="city" placeholder="City" required="required"/><br><br>

			</div>


			<div>
				<input type="submit" value="Register" />
				
			</div>
			<br>
			<a href="Login.jsp">login</a>

		</form><!-- form -->
		

		

	</section><!-- content -->
</div><!-- container -->
</body>
  
    <script src="js/index.js"></script>

</body>
</html>
