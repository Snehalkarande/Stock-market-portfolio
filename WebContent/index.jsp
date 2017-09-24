
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> --%>


<%@ page import="java.sql.*" %>

<%
String name=request.getParameter("val");

if(name==null||name.trim().equals("")){
out.print("<p>Please enter name!</p>");
}else{
try{
Class.forName("com.mysql.jdbc.Driver"); 

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  

PreparedStatement ps=con.prepareStatement("select * from market where company_name like '"+name+"%'");
ResultSet rs=ps.executeQuery();

if(!rs.isBeforeFirst()) {    
 out.println("<p>No Record Found!</p>"); 
}else{
out.print("<table border='1' cellpadding='5' width='80%'>");

out.print("<tr>  <th>share_id</th>  <th>company_name</th>  <th>share_rate</th>   <th>share_quqntity</th> ");
while(rs.next()){
out.print("<tr>  <td>"+rs.getString(1)+"</td>  <td>"+rs.getString(2)+"</td>  <td>"+rs.getString(3)+"</td>  <td>"+rs.getString(4)+"</td>  </tr>");
}
out.print("</table>");
}//end of else for rs.isBeforeFirst
con.close();
}catch(Exception e){out.print(e);}
}//end of else
%>



















































<%-- 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 


<%@ page import="java.sql.*" %>

<%
String name=request.getParameter("val");

if(name==null||name.trim().equals("")){
out.print("<p>Please enter name!</p>");
}else{
try{
Class.forName("com.mysql.jdbc.Driver"); 

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");  

PreparedStatement ps=con.prepareStatement("select * from market where name like '"+name+"%'");
ResultSet rs=ps.executeQuery();

if(!rs.isBeforeFirst()) {    
 out.println("<p>No Record Found!</p>"); 
}else{
out.print("<table border='1' cellpadding='10' width='60%'>");

out.print("<tr> <th>company_name</th> <th>share_id</th> <th>share_rate</th> <th>share_rate</th> <th>share_quqntity</th>  ");
while(rs.next()){
out.print("<tr> <td>"+rs.getString(1)+"</td> <td>"+rs.getString(2)+"</td> <td>"+rs.getString(3)+"</td> <td>"+rs.getString(4)+"</td> </tr>");
}
out.print("</table>");
}//end of else for rs.isBeforeFirst
con.close();
}catch(Exception e){out.print(e);}
}//end of else
%> --%>


