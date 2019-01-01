<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

</head>


<style>
body {
    font-family: "Lato", sans-serif;
    
 
}



.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color:#D3D3D3;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 75px;
}

.sidenav a {
    padding: 8px 8px 8px 50px;
    text-decoration: none;
    font-size: 25px;
    color: #0e0e11;
    display: block;
    transition: 0.3s;
  
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.sidenav .name{

padding-top:95%;
font-size:10px;
padding-bottom:0;
font-family:cursive;

}
.homee{
float:right;

margin-right:15px;
padding-top:19px;
}

.homee a{
font-size:23px;
text-decoration : none;
color:#D3D3D3;
padding-right:20px;
padding-left:50px;

}
.homee a:hover{
color:red;

}
#cont {
margin-top:7.5%;
color:white;
text-align:center;
padding:0;}

#cont h1{
margin-top:0;
padding-top:10px;
margin-left:28%;
width:570px;
margin-bottom:0;
padding-bottom:10px;

border:2px solid red;

font-size:45px;
}
#cont h2{
padding-top:13px;
padding-bottom:13px;
margin-top:14px;
padding-top:5px;
padding-bottom:5px;

margin-left:23%;

width:700px;
border:1px solid green;

}
#cont h3{
font-family:cursive;

margin:0;
padding:0;}
</style>
</head>
<body bgcolor="#0e0e11">



<div class="homee">
<a href="/Flight/home.jsp">Home</a>
<a href="/Flight/Book.jsp">Flight</a>
<a href="">Partners</a>
<a href="/Flight/login.jsp">Login</a>
</div>

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

  <a href="#">About</a>

  <a href="#">Contact</a>
       <div class="name">
<% 


if(session.getAttribute("send")!= null){  %>
<div class="user">
<a href="#"><%= session.getAttribute("send")%></a>
<a href='logout.jsp'>Logout</a></div>
<%
    }                                               
%>
  </div>
</div>

<span style="font-size:38px; color:#D3D3D3; padding-left:20px; cursor:pointer" onclick="openNav()">&#9776; </span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "210px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
<div id="k" style="color:white;  font-size:40px; text-align:center; margin-top:11%;">For any query or cancellation of tickets</br></div>
<div id="h" style="color:white; font-size: 28px; text-align:center; padding-top:10px; ">Email :-  jagdipsingh1239465@gmail.com </br>
Contact no. :-  7347227925

</div>

</body>
</html> 
