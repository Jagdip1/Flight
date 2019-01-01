<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flight</title>
</head>

<style>
body {
    font-family: "Lato", sans-serif;
    
 
}
body{

background-color:#0e0e11;
}
#booke{
position: absolute;
top: 45%;
left: 50%;
transform: translate(-50%,-50%);


}
#booke select,input{
display : block;
width:240px;
height:35px;
margin-bottom:6px;
font-size:17px;

}
#booke #date{

width:235px;}
 .homee{
 margin:0;
float:right;
margin-top:10px;
margin-right:15px;
padding-top:5px;
border:1px solid red;
padding-bottom:5px;
}
#booke #submit{

background-color:#55acee;

}
.homee a{
font-size:23px;
text-decoration : none;
color:#D3D3D3;
padding-right:20px;
padding-left:50px;


}
table, th, td{
font-size:20px;
border: 1px solid;
text-align:center;
border-collapse:collapse;
padding:10px;



}

.homee a:hover{
color:red;

}

#ab{
position: absolute;
top: 49%;
left: 50%;
transform: translate(-50%,-50%);
color:white;

}

#form2{

position: absolute;
top: 70%;
left: 50%;
transform: translate(-50%,-50%);
color:white;



}
#form2 input{
display : block;
width:240px;
height:35px;

font-size:17px;
}
#form2 #bookbtn {
background-color:#c44d33;
width:245px;
}
#pay {
text-align:center;
position: absolute;
top: 82.5%;
left: 37%;
color:white;
}
#form2 input{

color:black;

}
#not{
margin-left:20px;
padding:0;
padding-left:30px;
}
#booke h3{
color:white;
font-size:20px;
}
#nof{
position:absolute;
top:65%;
left:40%;
color:white;

}
</style>

<body>

<div class="homee">
<a href="/Flight/home.jsp">Home</a>
<a href="/Flight/Book.jsp">Flight</a>
<a href="">Partners</a>
</div>

<div id="booke">
<h3>PLease select the options</h3>

<form name ="booke" action="book">

<select name="from" id="from">
<option>Source</option>
<option>Chandigarh</option>
<option>Delhi</option></select>

<select name="destination" id="des">
<option>Destination</option>
<option>Delhi</option>
<option>Chandigarh</option>
<input type="date" name="date" id="date">
</select>

<input type="submit" value="submit" id="submit">
</form>
</div>
<% if((session.getAttribute("name")==null) || (session.getAttribute("name")=="")){ %> <% %>
<% }else{ 
if(session.getAttribute("name")=="not")
{ %><div id="nof">
Sorry no flight available for given inputs </div>

<%} 
else{   response.sendRedirect("Book1.jsp"); %> 

<% }}%>



</body>
</html>