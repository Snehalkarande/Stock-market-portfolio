<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
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
	<li><a href="about.jsp">About us</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="news.jsp">News</a></li>
    <li><a href="feedback.jsp">feedback</a></li>
    <li><a href="logout.html">Logout</a></li>


</ul>
 
 
 
 

<%

try{
	
	 String name=request.getParameter("name1");
	//out.println(name);
Class.forName("com.mysql.jdbc.Driver"); 

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  

PreparedStatement ps=con.prepareStatement("select market.company_name,company,share_rate,rate_of_share from market,portfollio where market.company_name=portfollio.company and company='"+name+"'");

ResultSet rs=ps.executeQuery();
/* 	while(rs.next())
	{
	int marketValue=Integer.parseInt(rs.getString(3));
	
	out.println(rs.getString(3));
	int portValue=Integer.parseInt(rs.getString(4));
	int profit=marketValue-portValue;	
	out.println(profit);
	out.println("   ");
	} */
	 out.print("<table border='1' cellpadding='5' width='40%' align='center'>");

	out.print("<tr> <th>Share Rate</th>    <th>profit/loss</th> ");
	while(rs.next()){
		int marketValue=Integer.parseInt(rs.getString(3));
		int portValue=Integer.parseInt(rs.getString(4));
		int profit=marketValue-portValue;
	out.print("<tr>  <td>"+rs.getString(3)+"</td>  <td>"+profit+"</td>  </tr>");
	}
	out.print("</table>");
/* if(!rs.isBeforeFirst()) {    
 out.println("<p>No Record Found!</p>"); 
}else{
out.print("<table border='1' cellpadding='5' width='40%'>");

out.print("<tr>  <th>share_id</th>  <th>company_name</th>  <th>share_rate</th>   <th>share_quqntity</th> ");
while(rs.next()){
out.print("<tr>  <td>"+rs.getString(1)+"</td>  <td>"+rs.getString(2)+"</td>  <td>"+rs.getString(3)+"</td>  <td>"+rs.getString(4)+"</td>  </tr>");
}
out.print("</table>");
} *///end of else for rs.isBeforeFirst
con.close();
}catch(Exception e){out.print(e);}

%>



</body>
</html>