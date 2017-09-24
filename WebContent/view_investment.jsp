<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
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

Show Status
<form action="CalculateProfitLoss.jsp">
<label>Enter Company name</label>
<input type="text" name="name1">
<input type="submit" value="Profit/Loss">

<%

session.setAttribute("name1",request.getParameter("name1") );

%>
</form>


<%

String name= (String)session.getAttribute("name");

if(name==null||name.trim().equals("")){
out.print("<p>Please enter name!</p>");
}else{
try{
Class.forName("com.mysql.jdbc.Driver"); 

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  

PreparedStatement ps=con.prepareStatement("select * from portfollio where user='"+name+"'");
ResultSet rs=ps.executeQuery();

if(!rs.isBeforeFirst()) {    
 out.println("<p>No Record Found!</p>"); 
}else{
out.print("<table border='1' cellpadding='5' width='40%'>");

out.print("<tr>   <th>company_name</th>  <th>Date</th>   <th>Rate</th> <th>Quantity</th> ");
while(rs.next()){
out.print("<tr>  <td>"+rs.getString(3)+"</td>  <td>"+rs.getString(4)+"</td>  <td>"+rs.getString(5)+"</td>  <td>"+rs.getString(6)+"</td>  </tr>");
}
out.print("</table>");
}//end of else for rs.isBeforeFirst
con.close();
}catch(Exception e){out.print(e);}
}//end of else
%>

<form action="Welcome.jsp">
<input type="submit" value="Back">
</form>
</body>
</html>