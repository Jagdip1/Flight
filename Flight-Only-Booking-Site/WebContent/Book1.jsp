<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Flight</title>
</head>
<style>
body {
    font-family: "Lato", sans-serif;
    
 
}
body{

background-color:#0e0e11;
}
#ab{
position: absolute;
top: 36%;
left: 50%;
transform: translate(-50%,-50%);
color:white;

}

#form2{

position: absolute;
top: 64%;
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
top: 75%;
left: 37%;
color:white;
}
.homee{
 margin:0;
float:right;
margin-top:10px;
margin-right:15px;
padding-top:5px;
border:1px solid red;
padding-bottom:5px;
}
#form2 input{

color:black;

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
#pay a{
color:blue;
text-decoration:none;
font-size:18px;
padding-top:5px;
padding-right:10px;}

.homee a:hover{
color:red;

}
#not{
margin-left:20px;
padding:0;
padding-left:30px;
}
body h3{
position:absolute;
top:20%;
left:50%;
transform:translate(-50%,-50%);
color:white;

font-size:25px;
}
</style>
<body>

<div class="homee">
<a href="/Flight/home.jsp">Home</a>
<a href="/Flight/Book.jsp">Flight</a>
<a href="">Partners</a>
</div>

<% if(session.getAttribute("name")!="not" && session.getAttribute("name")!=null){%>
<h3>Available Fligths</h3>
<table id="ab">

<tr>
<th>Flight Id
</th>
<th>Source
</th>
<th>Destination
</th>
<th>Date
</th>
<th>Duration
</th>
<th>Company
</th>
<th>Price
</th>
</tr>
<td><%= session.getAttribute("name") %>
</td>
<td><%= session.getAttribute("from") %> 
</td>
<td><%= session.getAttribute("destination") %>
</td>
<td><%= session.getAttribute("date") %>
</td>
<td><%= session.getAttribute("arrival")%> - <%= session.getAttribute("departure")%>
</td>
<td><%= session.getAttribute("company") %>
</td>
<td><%= session.getAttribute("price") %>
</td>
<tr>
</tr>
</table>
<div id="form2">
<form action ="book2"  >
<input type="text" name="flightid" placeholder="Enter Flight Id"  required>
<input type="text" name="tickets" placeholder="Enter no. of tickets" required>
<input type="submit" value="Book" id="bookbtn">

</form></div>
<div id="pay">
<%if(session.getAttribute("booked")=="booked"){ %>
Please complete the payment by clicking Pay button<br>
<a href="/Flight/pay.jsp">Pay</a>
<% } if(session.getAttribute("booked")=="notbook"){ %>
<div id="not">Sorry we don't have that much tickets</div><% } } %>

</div>

<script>

</script>
</body>
</html>