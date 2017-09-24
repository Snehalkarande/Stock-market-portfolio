<!DOCTYPE html>

<html>
<head>
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


<script>

var request=new XMLHttpRequest();

function searchInfo(){
var name=document.vinform.sele.value;
var url="index.jsp?val="+name;

try{
request.onreadystatechange=function(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('CompanyName').innerHTML=val;
}
}//end of function


request.open("GET",url,true);
request.send();
}catch(e){alert("Unable to connect to server");}
}


</script>
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


<h2 >Search Company name</h2>

<form name="vinform">
<select name="sele" onchange="searchInfo()" style="height:50px; width:1000px">
<option value="">company name:</option>
<option value="infosys">Infosys</option>
<option value="accenture">Accenture</option>
<option value="cognizant">Cognizant</option>
<option value="tiaa">Tiaa</option>
</select>
</form>
<br>

<form action="portfollio.jsp">
<br>
<!-- <h4>Are you interested in buying a share?</h4>
<h5>then click over here..</h5>  -->
<input type="submit" style="height:50px; width:1000px" value="Buy_share">
</form>
<br><br>


<!-- <form action="sell.html">
<br>

<input type="submit" value="Sell_share" style="height:50px; width:1000px" >
</form>
<br><br> -->
 

<form action="view_investment.jsp">
<br>
<!-- <h4>View my investment..</h4>
<h5>then click over here..</h5> -->
<input type="submit" style="height:50px; width:1000px" value="view_investment">
</form>
<br><br>


 
<span id="CompanyName"></span>
</body>
</html>




















































































