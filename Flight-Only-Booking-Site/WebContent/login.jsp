<htmL>
<head>
<title>Login</title>
</head>

<style>
  body{

    margin:0;
    background-color:#0e0e11;
    
  }
  body,html{

    height:100%;
  }
#login {
position: absolute;
top: 54%;
left: 50%;
transform: translate(-50%,-50%);


}


#login input{
display:block;
width:320px;
height:40px;
padding:10px 20px;
font-family:sans-serif;
color:white;
background:rgba(0, 0, 0, 0.3);
border-radius: 5px;
box-shadow:inset 0px 5px 45px rgba(100,100,100,0.2), 0px 1px 1px rgba(255,255,255,0.2);
margin-bottom: 5px;

}
#login #login-btn{

  font-size:15px;
  text-align:center;
  vertical-align:middle;
  line-height: 20px;
padding-bottom:5px;
background:#55acee;

}

#login #register-btn{
margin-top:5px;
  font-size:15px;
  text-align:center;
  vertical-align:middle;
  line-height: 20px;
  background:#c44d33;
  
}
#login h2{
margin:13px;;
text-align:center;

color:white;
font-family: courier;
font-size:31px;




}
body h1{
padding-top:4%;
padding-bottom:13px;
font-family:Courier;
font-size:45px;
background-color:#040405;

}
#or{
margin-top:0;
margin-bottom:0;
font-size:23px;
color:white;

padding-left:147px;
}

</style>
<body>
<h1 style="color:	#D3D3D3; text-align:center;">WELCOME TO JSFB SYSTEM </h1><br>
<div id ="box"></div>
 <div id="login">
    <h2><b>Login</b></h2>
<form name="login" onSubmit="return A();" action="login-1" >

  <input type="text" placeholder="Username" name="Username" id="Username">
  <input type="password" placeholder="Password" name="Password" id="Password" >
  <input type="submit" value="Sign In" id="login-btn" >
  <div id="or">or</div>
<input type="button" value="Register" id="register-btn" onclick="window.location.href='register.jsp'">
  </form>
  </div>
  
<div class="name">
<% 
if ((session.getAttribute("send") == null) || (session.getAttribute("send") == "")) {
%> 


<%} else{if(session.getAttribute("send") == "invalid credentials"){
%><script>window.alert("invalid login details \nPlease register first"); </script>
<%

%>
<% }else{     
	 response.sendRedirect("home.jsp"); %> 

<%
    }}                                               
%>
  </div>
  <script type="text/javascript">
  
  function A(){
	  
	  var Username=document.login.Username;
	  var Password=document.login.Password;
	 var error="";
	  if(Username.value == ""){
		  
	error+="Please enter your username. \n";
		
	  }
	  if(Password.value == ""){
		error+="Please enter your Password. \n";
		
	  }
	  
	  if(error !=""){
		  window.alert(error);
		  return false;
		  
	  }
	  return true;
  }
  </script>
  
  <div id="ab">
<%
if ((session.getAttribute("ha") == null) || (session.getAttribute("ha") == "")) {

%> 
<br/>

<%} else {
	
	
	
%> <script>
window.alert("Registration successful \nNow you can Sign In");


</script>


<%
    }
%>

</div>
  
  
<footer>

<p> </p>
</footer>


</body>


</htmL>