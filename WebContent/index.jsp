<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body
{
	background-image:url("assets/b.JPG");
	background-position: center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 1700px 1000px;
}
.top
{
	
	
	background-position: center;
	margin-top:30px;  
	text-align: center;
	border:2px solid silver;
	border-width: 2px;
	border-color: white;
	border-radius: 15px;
    
}
.v1

{ 
 border-right: 2px solid white;
 height: 600px;
margin-left:400px;
margin-top:5px;
border-radius: 15px;
    
}

.v
{
	margin-top:0px;
	margin-left: 200px;
    
	margin-bottom: 50px;
	

}
.tab
{
	margin-top: 10px;
	margin-left:100px;
}
.p
{
	margin-left:25px; 
}

input[type=text], input[type=password] , select{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display:inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  text-align: :center;
  font-family: "micorosft jhenghei";
}
input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-family: "micorosft jhenghei";
}

input[type=submit]:hover {
  background-color: #45a049;
}

</style>
</head>
<body>
<div class="top">
	<h1><font face="microsoft jhenghei" color="white">HOSTEL MANAGEMENT SYSTEM</h1>
</div>
<table>
	<tr>
		<td><div class="v">
<video autoplay width="450px" height="400px" controls>
  <source src="assets/v.mp4" type="video/mp4">
  
Your browser does not suppor the video tag.
</video></div>
</td><td><div class="v1"></div>
</td><td>
<div class="tab">    
<script>
var divs=new Array();
divs[0]="erruID";
divs[1]="errEmail";
divs[2]="errPwd";
divs[3]="errConfirm";

function validate(){
    var inputs=new Array();
    inputs[0]=document.getElementById('n').value;
    inputs[1]=document.getElementById('e').value;
    inputs[2]=document.getElementById('p').value;
    inputs[3]=document.getElementById('cp').value;
    var errors= new Array();
    errors[0]="<span>Please enter your UID!</span>";
    errors[1]="<span>Please enter your e-mail-id!</span>";
    errors[2]="<span>Please enter your Password!</span>";
    errors[3]="<span>Please enter your Confirm Password!</span>";
    for(i in inputs){

        var errMsg=errors[i];
        var divMsg=divs[i];
        if(inputs[i]=="")

            document.getElementById(divMsg).innerHTML=errMsg;

        else if(i==1){
            var atpos=inputs[i].indexOf("@");
            var dotpos=inputs[i].lastIndexOf(".");
            if(atpos<1 || dotpos<atpos+2 || dotpos+2>= inputs[i].length)
                document.getElementById('errEmail').innerHTML="<span>Enter Valid e-mail adderss!!</span>";
            else
                document.getElementById(divMsg).innerHTML="OK!";
        }else if(i==3){
            var ff=document.getElementById('pwd').value;
            var ss=document.getElementById('confirm').value;
            if(ss!=ff)
                document.getElementById("errConfirm").innerHTML="<span>Your password doesnot match..!!</span>";
            else
                document.getElementById(divMsg).innerHTML="OK!";
        }else
            document.getElementById(divMsg).innerHTML="OK!";
    }

}
</script>
    <div class="p"><img src="assets/p.jpg" style="border-radius: 95%"></div>
    <br>
    <form action="login" method="post"><CENTER>
    <FONT COLOR="WHITE"><H1>LOGIN</H1></FONT></CENTER>
    
    <input type="text" name="uid" placeholder="Uid" onKeyup="validate()"><div id="errUid"></div>
	<br>
	<input type="password" name="psw" placeholder="password" onKeyup="validate()"><div id="errPwd"></div>
	<!-- 	<br>
	
	<input type="password" id="p" placeholder="password" onKeyup="validate()"><div id="errPwd"></div>
	<br>
	<input type="text" id="cp" placeholder="confirm password" onKeyup="validate()"><div id="errConfirm"></div>
	
	<br>
	
	
	<select id="gender" name="gender" placeholder="select gender" required>
      <option value="gender"><font color="silver">select gender</font></option>
      <option value="male">Male</option>
      <option value="female">Female</option>
      <option value="others">Not likely to disclose</option>
    </select>
  -->
	<input type="submit" value="submit">
	</form> 
</div>
</td>
</tr>
</table>
	
	
</body>
</html>
