<html>

<head>
<title>Register</title></head>
<style>



body{

  margin:0;
   background-color:#0e0e11;
}
body,html{

  height:100%;
}
.registering{
position: absolute;
top: 45%;
left: 50%;
transform:  translate(-50%,-50%);


}

.registering input{

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
.registering #Sign-Up-Button{
background:#55acee;
font-size:15px;
text-align:center;
vertical-align:middle;
color:white;
line-height: 20px;}

.registering h2{

  text-align:center;

  color: 		#D3D3D3;
  font-family: courier;
  font-size:37px;
  margin:0;
}

.registering h3{
  font-size:17px;
  font-family:sans-serif;
  text-align:center;
  color:	#D3D3D3;
}

#ab{

position: absolute;
top: 74%;
left: 50%;
transform:  translate(-50%,-50%);
 color: white;
 font-family:sans-serif;



}
#abc{
text-align:center}
</style>
<body>





</div>
<div class="registering">
  <h2>Sign up</h2>
  <h3>Please fill this from to create an Account</h3>
<form name="regis" onSubmit="return Ab();"  action="Register-1">

<input type="text" placeholder="Enter Username" name="Username"  id="Username">
<input type="text" placeholder="Enter Email" name="Email" id="Email-Id">
<input type="password" placeholder="Enter Password" name="Password" id="Password" >
<input type="password" placeholder="Re-Enter Password" name="PasswordA" id="Password-Again" >
<input type="submit" value="Submit" id="Sign-Up-Button" >

</form>
</div>
<div class="result-regis">




</div>
<script type="text/javascript">

function Ab(){
	var Username=document.regis.Username;
	var Email=document.regis.Email;
    var Password=document.regis.Password;
    var PasswordA =document.regis.PasswordA;
		 var error="";
		 
		  if(Username.value == ""){
			 error+="Please enter your username. \n"; 
			 
		  }
		  { if(Email.value == ""){
			  
		  error+="Please enter your email address. \n";
			
			
			    }
		  else{
			  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        	
        	 if(Email.value.match(mailformat)){    Email.focus(); }
        	 else{  window.alert("You have entered Invalid email address");
        	 Email.focus();
        	 }
        	 }
   }
       
		  if(Password.value == ""){
			error+="Please enter your password. \n";
		  }
		  {  if(PasswordA.value == ""){
			error+="Please enter your password again. \n"
		  }
		  else{
			   if(PasswordA.value!=Password.value){
		        	  window.alert("your password does not matched.");
		        	 return false;
		          }  
		  }
		  }
       
          if(error != ""){
        	  window.alert(error);
        	  
        	   return false;
          }
		  return true;
	  }
	  


</script>






</body>


</html>
