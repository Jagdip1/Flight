<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pay</title>
</head>
<style>
body {
    font-family: "Lato", sans-serif;
    
 
}
body{

background-color:#0e0e11;
}
#pay{

position:fixed;
top:27%;
left:39%;
tranform:translate(-50%,-50%);
border:1px solid red;
padding-top:20px;
padding-left:70px;
padding-right:70px;
padding-bottom:10px;
font-size:21.5px;
text-align:center;
color:white;

}
#bhim{

margin-bottom:0;
}
#bhimbtn{
margin-top:10px;
margin-bottom:40px; 


}
#pay  #paytmbtn{
margin-top:10px;


}
#paytm{
margin-bottom:0;
}
</style>




<body>
<div id="bta" style="position :absolute; top:16%; left:36%; font-size:25px; color:white;" >Pay through your desired method</div>
<div id="pay"> 
<h2 id="paytm">Paytm</h2>
<button id="paytmbtn"  onclick="window.location.href='http://p-y.tm/UHwe-Qy'">Pay</button>

<h2 id="bhim">Bhim UPI</h2>
<button id="bhimbtn" onclick="functiona()">UPI</button>



</div>


<script>
function functiona(){
	
	window.alert("Payment is successful \nTickets are generated and sent to your registered email id ");
}


</script>








</body>
</html>